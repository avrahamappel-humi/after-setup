{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  php = pkgs.php81.withExtensions ({ enabled, all }: enabled ++ [ all.imagick ]);

  phpTools = import ./php-tools.nix { inherit pkgs php; };
in
pkgs.mkShell
{
  buildInputs = with pkgs; [
    nodejs # For Prettier
    nodePackages.intelephense
    php.packages.composer
    phpTools
  ];
}
