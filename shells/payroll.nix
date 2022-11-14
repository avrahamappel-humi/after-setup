{ pkgs ? import <nixpkgs> { } }:

let
  env = with pkgs; bundlerEnv {
    name = "payroll-bundler-env";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
    copyGemFiles = true;
  };
in
pkgs.mkShell {
  name = "payroll";
  buildInputs = with pkgs; [
    env
    env.wrappedRuby
    env.bundler
    bundix
    solargraph
  ];

  # Can't set up aliases here, since it's run in a subshell
  shellHook = ''
    echo To update deps, run this
    echo "rm gemset.nix; bundix; solargraph bundle"
  '';
}
