{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

let
  php = pkgs.php81;

  phpTools = import ./php-tools.nix { inherit pkgs php; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    php81Packages.composer
    phpTools
    nodejs-16_x
    nodePackages.intelephense
    nodePackages.vls
    yarn
  ];
}
