{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = with pkgs;
    [
      nodejs
      nodePackages.typescript-language-server
      nodePackages.vscode-langservers-extracted
    ];
}
