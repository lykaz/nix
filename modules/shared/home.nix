{pkgs, ... }:

let
  packages = with pkgs; [
    fastfetch
    rapidraw
  ];
in
{
  imports = [ ./kitty.nix ];

  home.stateVersion = "24.11";

  home.packages = packages;
}