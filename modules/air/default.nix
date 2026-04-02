{ pkgs, inputs, ... }: {
  nix.settings.experimental-features = "nix-command flakes";

  system.stateVersion = 6;

  imports = [ ./standard-brew.nix ];

  system.primaryUser = "lukas";

  users.users.lukas = {
    name = "lukas";
    home = "/Users/lukas";
  };

  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = "lukas";
    mutableTaps = false;
    autoMigrate = true;

    taps = {
      "homebrew/homebrew-core" = inputs.homebrew-core;
      "homebrew/homebrew-cask" = inputs.homebrew-cask;
      "homebrew/homebrew-bundle" = inputs.homebrew-bundle;
    };
  };

  homebrew = {
    enable = true;
    onActivation.cleanup = "none"; # uninstall everythign that is not in this list >zap<
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}