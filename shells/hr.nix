{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

pkgs.mkShell
{
  buildInputs = with pkgs; [
    php80
    phpPackages.composer
    nodejs # For Prettier
    nodePackages.intelephense
  ];
}
