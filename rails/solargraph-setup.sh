#! /usr/bin/env bash
#
# Set up Solargraph LSP and dependencies

RAILS_DIR=$(realpath "$(dirname "$0")")

# Install main app gems
cd "$RAILS_DIR" || return
docker-compose run payroll cp -r -u /usr/local/bundle/* /myapp/.direnv/ruby
direnv exec "$RAILS_DIR" bundle config build.thin -fdeclspec
direnv exec "$RAILS_DIR" bundle install
direnv exec "$RAILS_DIR" gem install solargraph solargraph-rails
direnv exec "$RAILS_DIR" solargraph download-core
direnv exec "$RAILS_DIR" solargraph bundle

# Download shim file
cd "$RAILS_DIR/app" || return
nix-shell -p wget --run "wget 'https://gist.githubusercontent.com/castwide/28b349566a223dfb439a337aea29713e/raw/715473535f11cf3eeb9216d64d01feac2ea37ac0/rails.rb'"
