{ pkgs ? import <nixpkgs> { config.permittedInsecurePackages = [ "nodejs-16.20.1" ]; } }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    php81
    php81Packages.composer
    php81Packages.psalm
    phpactor
    nodejs-16_x
    nodePackages.vls
    yarn
  ];
}
