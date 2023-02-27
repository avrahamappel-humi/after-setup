{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  php = pkgs.php81;
  php-tools = (import ./php-tools.nix) { inherit php; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    php
    php81Packages.composer
    php-tools
    nodejs-16_x
    nodePackages.intelephense
    nodePackages.vls
    yarn
  ];
}
