{ pkgs, lib, ... }:

let
  extensions = [ "nix" ];

  settings = {
    theme = {
      mode = "system";
      dark = "Ayu Mirage";
      light = "Ayu Light";
    };

    base_keymap = "VSCode";
    vim_mode = true;
    trusted_projects = "all";

    telemetry = {
      enabled = false;
    };
  };

in
{
  programs.zed-editor = {
    enable = true;

    extensions = extensions;
    userSettings = settings;
  };
}