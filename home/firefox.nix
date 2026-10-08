{ pkgs, inputs, ... }:

{
  programs.firefox = {
    enable = true;

    profiles = {
      default = {
        id = 0;
        name = "default";
        isDefault = true;

        settings = {
          "media.gmp-widevinecdm.enabled" = true;
          "media.eme.enabled" = true;
        };
      };
    };

    policies = {
      ExtensionSettings = let
        moz = short: "https://addons.mozilla.org/firefox/downloads/latest/${short}/latest.xpi";
      in {
        "*".installation_mode = "blocked";

        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
          installurl = moz "bitwarden-password-manager";
          installation_mode = "force_installed";
          updated_disabled = false;
          default_area = "navbar";
        };
      };
    };
  };
}
