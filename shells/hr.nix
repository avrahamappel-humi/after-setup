{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  phpactor = import ./phpactor { };
  psalm = import ./psalm { };
in
pkgs.mkShell
{
  buildInputs = with pkgs; [
    nodejs # For Prettier
    nodePackages.intelephense
    php81
    php81Packages.composer
    phpactor
    psalm
  ];
}
