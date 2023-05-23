{ pkgs ? import <nixpkgs> { } }:

# with (import ./dev-env.nix); buildDevEnv (withTypescript (withAngular { }))
with (import ./dev-env.nix); buildDevEnv (withTypescript { })
