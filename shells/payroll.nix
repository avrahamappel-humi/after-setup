{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = [
    # Empty for now as I can't get solargraph and bundle to play nicely together
    # without using bundix, which doesn't support local gems in subdirectories
    # ruby_3_1
  ];
}
