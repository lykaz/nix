{pkgs, ... }:

let
  packages = with pkgs; [
    fastfetch
  ];
in
{
  # imports = ./git;

  system.stateVersion = 6;

  environment.systemPackages = packages;
}