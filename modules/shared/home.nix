{pkgs, ... }:

let
  packages = with pkgs; [
    fastfetch
  ];
in
{
  imports = [ ./kitty.nix ];

  home.stateVersion = "24.11";

  home.packages = packages;
}