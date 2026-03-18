{pkgs, ... }:

let
  username = "lukas";

  macPackages = with pkgs; [
    raycast
  ];
in
{

  home.username = username;
  home.homeDirectory = "/Users/${username}";
  home.stateVersion = "24.11";

  home.packages = macPackages;
}