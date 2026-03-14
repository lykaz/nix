{ pkgs, lib, ... }:

let
  sharedSettings = {
  };

  macSettings = {
    macos_titlebar_color = "background";
    macos_show_window_title_in = "none";
    window_padding_width = 3;
  };
in
{
  programs.kitty = {
    enable = true;
    settings = sharedSettings // (lib.optionalAttrs pkgs.stdenv.isDarwin macSettings);
  };
}