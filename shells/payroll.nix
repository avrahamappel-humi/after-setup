let
  ruby-nix = builtins.getFlake "github:sagittaros/ruby-nix/ce2b0e67e745c3cce52aad9e89935cbb3f34807c";

  pkgs = import <nixpkgs> {
    overlays = [ ruby-nix.overlays.ruby ];
  };

  project = "${builtins.getEnv "HOME"}/humility/applications/payroll";

  # Need to ignore collisions
  rubyNix = ruby-nix.lib (pkgs // {
    buildEnv = args: pkgs.buildEnv (args // {
      ignoreCollisions = true;
    });
  });

  bundlerEnv = rubyNix {
    name = "payroll-bundler-env";
    ruby = pkgs.ruby_3_1;
    gemset = "${project}/gemset.nix";
  };
in
pkgs.mkShell {
  buildInputs = [
    bundlerEnv.env
    bundlerEnv.ruby
  ];
}
