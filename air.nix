# macos-packages.nix
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    fastfetch
  ];
}