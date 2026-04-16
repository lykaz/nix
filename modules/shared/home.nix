{pkgs, ... }:

let
  packages = with pkgs; [
    fastfetch
    rapidraw
    signal-desktop
    discord
    gramps
    # synology-drive-client broken on darwin
  ];
in
{
  imports = [ ./kitty.nix ];

  home.stateVersion = "24.11";

  home.packages = packages;
}