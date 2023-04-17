let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  buildInputs = [
    pkgs.postgresql
    pkgs.ruby_3_1
    pkgs.rubyPackages_3_1.solargraph
  ];
}
