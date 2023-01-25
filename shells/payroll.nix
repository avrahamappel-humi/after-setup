{ pkgs ? import <nixpkgs> { } }:

let
  bundix = (pkgs.fetchFromGitHub {
    owner = "sagittaros";
    repo = "bundix";
    rev = "4e0d18a";
    sha256 = "sha256-KDKdesIUpyM6YnGsZMOxN34NhTNCsXvd03qsHNtUdWc=";
  });

  rubyNixBuilder = import
    (pkgs.fetchFromGitHub {
      owner = "sagittaros";
      repo = "ruby-nix";
      rev = "b4f3bc5";
      sha256 = "sha256-cx9E+VEUmoiRcaANkECzZKZQyj3IG5YMntZMRzbvHQ4=";
    })
    bundix;


  rubyNix = rubyNixBuilder (pkgs // {
    buildEnv = args: pkgs.buildEnv (args // {
      ignoreCollisions = true;
    });
  });

  bundlerEnv = rubyNix {
    name = "payroll-bundler-env";
    ruby = pkgs.ruby_3_1;
    gemset = "${builtins.getEnv "HOME"}/humility/applications/payroll/gemset.nix";
  };
in
pkgs.mkShell {
  buildInputs = [
    bundlerEnv.env
  ];
}
