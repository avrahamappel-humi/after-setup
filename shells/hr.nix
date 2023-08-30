{ pkgs ? import <nixpkgs> { } }:

let
  php = pkgs.php81.withExtensions ({ enabled, all }: enabled ++ [ all.imagick ]);
in
pkgs.mkShell
{
  buildInputs = with pkgs; [
    nodejs_20 # For Prettier
    php
    php.packages.composer
    php.packages.psalm
    phpactor
    yarn
  ];
}
