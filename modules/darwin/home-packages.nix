{pkgs, ... }:
{
  home.packages = with pkgs; [
    raycast
    whatsapp-for-mac
    battery-toolkit
    tidal
  ];
}
