{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  php = pkgs.php81;
  phpPackages = php.packages;
  phpactor = import ./phpactor { inherit php phpPackages; };
  psalm = import ./psalm { inherit php phpPackages; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    php
    phpPackages.composer
    phpactor
    psalm
    nodejs-16_x
    nodePackages.intelephense
    nodePackages.vls
    yarn
  ];
}
