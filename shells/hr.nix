{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  php = pkgs.php81.withExtensions ({ enabled, all }: enabled ++ [ all.imagick ]);
  php-tools = (import ./php-tools.nix) { inherit php; };
in
pkgs.mkShell
{
  buildInputs = with pkgs; [
    nodejs # For Prettier
    nodePackages.intelephense
    php
    php.packages.composer
    php-tools
  ];
}
