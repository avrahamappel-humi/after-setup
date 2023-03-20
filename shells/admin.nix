{ pkgs ? import <nixpkgs> { } }:

let
  phpTools = import ./php-tools.nix;
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    php81
    php81Packages.composer
    phpTools
    nodejs-16_x
    nodePackages.vls
    yarn
  ];
}
