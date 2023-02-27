{ php }:

let
  phpPackages = php.packages;
  noDev = true;
  phpactor = import ./phpactor { inherit php phpPackages noDev; };
  psalm = import ./psalm { inherit php phpPackages noDev; };
in
[
  phpactor
  psalm
]
