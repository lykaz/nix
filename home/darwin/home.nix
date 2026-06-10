
{pkgs, ... }:
{

  home.username = "lukas";
  home.homeDirectory = "/Users/${username}";
  home.stateVersion = "24.11";

  imports = [
    ../../modules/darwin/home-packages.nix
    ../../modules/shared/home-packages.nix
    ../../modules/shared/kitty.nix
    ../../modules/shared/zed.nix
  ];
}
