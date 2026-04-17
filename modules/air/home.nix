{pkgs, ... }:

let
  username = "lukas";

  macPackages = with pkgs; [
    raycast
    whatsapp-for-mac
    battery-toolkit
  ];
in
{

  home.username = username;
  home.homeDirectory = "/Users/${username}";
  home.stateVersion = "24.11";

  # additional packages that require more config
  imports = [
    ./aerospace.nix
  ];

  home.packages = macPackages;
}