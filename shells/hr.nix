{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

pkgs.mkShell
{
  buildInputs = with pkgs; [
    php81
    phpPackages.composer
    nodejs # For Prettier
    nodePackages.intelephense
  ];
}
