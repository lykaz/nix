{pkgs, ... }:
{
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  home.packages = with pkgs; [
    fastfetch
    rapidraw
    signal-desktop
    discord
    gramps
    # synology-drive-client broken on darwin
    inkscape # brocken on darwin, adwaita icon or smth
    obsidian
    direnv
    # blender
  ];
}
