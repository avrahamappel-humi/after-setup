{ pkgs, php }:

let
  php' = php.buildEnv {
    extraConfig = "memory_limit=8G";
  };
  phpactor = import ./phpactor {
    inherit pkgs;
    php = php';
  };
in
[
  php'
  phpactor
  php.packages.psalm
]
