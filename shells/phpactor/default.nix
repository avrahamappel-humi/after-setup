{ pkgs ? import <nixpkgs> { }, php ? pkgs.php, }:

pkgs.stdenv.mkDerivation {
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
    php.packages.composer
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
}
