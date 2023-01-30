#! /usr/bin/env bash
#
# Set up Solargraph LSP and dependencies

RAILS_DIR=$(realpath "$(dirname "$0")")

# Install main app gems
cd "$RAILS_DIR" || return

echo 'Syncing gems installed in container to local env'
mkdir -p "$RAILS_DIR/.direnv/ruby"
docker-compose run payroll sh -c 'cp -r -u -v /usr/local/bundle/* /myapp/.direnv/ruby'

echo 'Running bundle install locally (without building)'
# Set build to false for each gem
for gem in $(grep -oP '^\s*gem\s+['\''"]\K[^'\''"]+' Gemfile)
do
    direnv exec "$RAILS_DIR" bundle config "build.$gem" false
done

direnv exec "$RAILS_DIR" bundle install

echo 'Installing solargraph'
direnv exec "$RAILS_DIR" gem install solargraph solargraph-rails
direnv exec "$RAILS_DIR" solargraph download-core
direnv exec "$RAILS_DIR" solargraph bundle

# Download shim file
nix-shell -p wget --run "wget 'https://gist.githubusercontent.com/castwide/28b349566a223dfb439a337aea29713e/raw/715473535f11cf3eeb9216d64d01feac2ea37ac0/rails.rb'"
mv rails.rb "$RAILS_DIR/app"
