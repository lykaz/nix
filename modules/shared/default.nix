{pkgs, ... }:

let
  packages = with pkgs; [
    htop
  ];
in
{
  # imports = [./git];
  environment.systemPackages = packages;
}