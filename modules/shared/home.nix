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
    direnv
  ];
in
{
  imports = [
    ./kitty.nix
    ./zed.nix
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  home.stateVersion = "24.11";

  home.packages = packages;
}
