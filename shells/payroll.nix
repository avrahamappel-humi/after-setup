{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    # Required for building postgres gem
    postgresql
  ];

  buildInputs = with pkgs; [
    ruby_3_1
  ];
}
