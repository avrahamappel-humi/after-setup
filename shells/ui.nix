{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = with pkgs;
    [
      nodejs
      nodePackages.npm
      nodePackages.typescript-language-server
      yarn
    ];
}
