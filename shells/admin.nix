{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    php81
    phpPackages.composer
    nodejs-16_x
    nodePackages.intelephense
    nodePackages.vls
    nodePackages.vscode-langservers-extracted
  ];
}
