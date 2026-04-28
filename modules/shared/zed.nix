{ pkgs, lib, ... }:

let
  extensions = [
    "nix"
    "vscode-icons"
  ];

  settings = {
    theme = {
      mode = "system";
      dark = "Ayu Mirage";
      light = "Ayu Light";
    };

    icon_theme = {
      mode = "system";
      light = "VSCode Icons for Zed(Light Angular)";
      dark = "VSCode Icons for Zed(Dark Angular)";
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
