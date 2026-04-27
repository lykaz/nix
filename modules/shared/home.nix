{pkgs, ... }:

let
  packages = with pkgs; [
    fastfetch
    rapidraw
    signal-desktop
    discord
    gramps
    # synology-drive-client broken on darwin
    inkscape # brocken on darwin, adwaita icon or smth
    obsidian
  ];
in
{
  imports = [
    ./kitty.nix
    ./zed.nix
  ];

  home.stateVersion = "24.11";

  home.packages = packages;
}