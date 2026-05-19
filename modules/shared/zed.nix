{ pkgs, lib, ... }:

let
  extensions = [
    "nix"
    "vscode-icons"
    "prolog"
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

    # using direnv
    load_direnv = "shell_hook";

    terminal = {
      shell = "system";
    };

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
