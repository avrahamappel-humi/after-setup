{ pkgs ? import <nixpkgs> { } }:

let
  env = pkgs.bundlerEnv {
    name = "payroll-bundler-env";
    ruby = pkgs.ruby_3_1;
    gemdir = "${builtins.getEnv "HOME"}/humility/applications/payroll";
    ignoreCollisions = true;
  };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    env
    env.wrappedRuby
  ];
}
