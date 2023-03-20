{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  php = pkgs.php81.withExtensions ({ enabled, all }: enabled ++ [ all.imagick ]);

  phpTools = import ./php-tools.nix;
in
pkgs.mkShell
{
  buildInputs = with pkgs; [
    nodejs # For Prettier
    nodePackages.intelephense
    php
    php.packages.composer
    phpTools
  ];
}
