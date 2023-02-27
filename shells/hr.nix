{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  php = pkgs.php81.withExtensions ({ enabled, all }: enabled ++ [ all.imagick ]);
  phpPackages = php.packages;
  phpactor = import ./phpactor { inherit php phpPackages; };
  psalm = import ./psalm { inherit php phpPackages; };
in
pkgs.mkShell
{
  buildInputs = with pkgs; [
    nodejs # For Prettier
    nodePackages.intelephense
    php
    phpPackages.composer
    phpactor
    psalm
  ];
}
