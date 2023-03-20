let
  phpTools = (builtins.getFlake (builtins.toString ./phpactor)).packages.${builtins.currentSystem};
in
[
  phpTools.phpactor
  phpTools.psalm
]
