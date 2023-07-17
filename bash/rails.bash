#!/bin/bash
#
# Setup for Rails projects

here=$(dirname "$(realpath "$0")")

ln -s -f "$here/../rails/solargraph.yml" .solargraph.yml

cat >> .git/info/exclude << EOF
.solargraph.yml
app/rails.rb
EOF

# Bundle the project gems using Nix
bundle config build.thin -fdeclspec
bundle install
# rm gemset*
# nix run github:sagittaros/bundix/8cea9709a06a458179f9677c244801ed944c2fc9
# mv gemset.nix gemset.project.nix
# Include the solargraph gems
# cp "$here/../rails/gemset.nix" gemset.nix
solargraph download-core
solargraph bundle
# Add shim file for solargraph (may not be necessary if we're using solargraph-rails
nix-shell -p wget --run "wget 'https://gist.githubusercontent.com/castwide/28b349566a223dfb439a337aea29713e/raw/715473535f11cf3eeb9216d64d01feac2ea37ac0/rails.rb'"
mv rails.rb app/rails.rb

echo 'Setting up Git hooks'
bundle exec lefthook install
