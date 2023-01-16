{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    # Required for building postgres gem
    postgresql
  ];

  buildInputs = with pkgs; [
    ruby_3_1
    rubyPackages_3_1.solargraph
  ];

  shellHook = ''
    # Required for building thin gem
    bundle config build.thin -fdeclspec
  '';
}
