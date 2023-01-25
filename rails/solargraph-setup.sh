#! /usr/bin/env bash
#
# Set up Solargraph LSP and dependencies

RAILS_DIR=$(realpath "$(dirname "$0")")

# Install PayRoute gems
cd "$RAILS_DIR/engines/PayRoute" || return
direnv exec "$RAILS_DIR" bundle install

# Install main app gems
cd "$RAILS_DIR" || return
direnv exec "$RAILS_DIR" bundle install
direnv exec "$RAILS_DIR" solargraph download-core
direnv exec "$RAILS_DIR" solargraph bundle

# Download shim file
cd "$RAILS_DIR/app" || return
nix-shell -p wget --run "wget 'https://gist.githubusercontent.com/castwide/28b349566a223dfb439a337aea29713e/raw/715473535f11cf3eeb9216d64d01feac2ea37ac0/rails.rb'"
