{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./common.nix
    ./starship.nix
    ./fish.nix
    ./atuin.nix
  ];
}
