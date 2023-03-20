{
  description = "Phpactor: a language server for PHP";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        php = pkgs.php.buildEnv {
          extraConfig = "memory_limit=8G";
        };
        phpactor = pkgs.stdenv.mkDerivation {
          pname = "phpactor";
          version = "2023.01.21";

          src = pkgs.fetchFromGitHub {
            owner = "phpactor";
            repo = "phpactor";
            rev = "2023.01.21";
            sha256 = "sha256-jWZgBEaffjQ5wCStSEe+eIi7BJt6XAQFEjmq5wvW5V8=";
          };

          buildInputs = [
            php
            pkgs.php81Packages.composer
          ];

          COMPOSER_CACHE_READ_ONLY = 1;

          buildPhase = ''
            composer install --no-dev
          '';

          doCheck = true;
          checkPhase = ''
            bin/phpactor status
          '';

          installPhase = ''
            mkdir $out
            cp -a ./* $out/
          '';
        };
      in
      {
        packages = rec {
          inherit phpactor;
          psalm = php.packages.psalm;
          default = phpactor;
        };
      }
    );
}
