{ pkgs ? import <nixpkgs> { } }:

let
  env = pkgs.bundlerEnv {
    name = "payroll-bundler-env";
    # ruby = pkgs.ruby_3_0;
    ruby = pkgs.ruby_3_1;
    # inherit (pkgs) ruby;
    gemdir = "${builtins.getEnv "HOME"}/humility/applications/payroll";
    ignoreCollisions = true;
  };
in
pkgs.mkShell {
  # nativeBuildInputs = with pkgs; [
  #   # Required for building postgres gem
  #   postgresql
  # ];

  buildInputs = with pkgs; [
    # (pkgs.lib.lowPrio env)
    env
    env.wrappedRuby
    # ruby_3_1
    # rubyPackages_3_1.solargraph
  ];

  # shellHook = ''
  #   # Required for building thin gem
  #   bundle config build.thin -fdeclspec
  # '';
}
