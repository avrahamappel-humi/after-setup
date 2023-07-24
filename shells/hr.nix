{ pkgs ? import <nixpkgs> { } }:

let
  php = pkgs.php81.withExtensions ({ enabled, all }: enabled ++ [ all.imagick ]);

  phpTools = import ./php-tools.nix;
in
pkgs.mkShell
{
  buildInputs = with pkgs; [
    nodejs_20 # For Prettier
    php
    php.packages.composer
    phpTools
    yarn
  ];
}
