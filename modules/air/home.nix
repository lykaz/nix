{pkgs, ... }:

let
  username = "lukas";
in
{
  home.username = username;
  home.homeDirectory = "/Users/${username}";
  home.stateVersion = "24.11";
}