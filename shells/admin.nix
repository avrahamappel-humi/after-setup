{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  phpactor = import ./phpactor { };
  psalm = import ./psalm { };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    php81
    phpPackages.composer
    phpactor
    psalm
    nodejs-16_x
    nodePackages.intelephense
    nodePackages.vls
  ];
}
