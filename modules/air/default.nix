{ pkgs, ... }: {
  nix.settings.experimental-features = "nix-command flakes";

  system.stateVersion = 6;

  imports = [
    ./keyboard-cowboy.nix
  ];

  users.users.lukas = {
    name = "lukas";
    home = "/Users/lukas";
  };

  homebrew = {
    enable = true;
    onActivation.cleanup = "none"; # uninstall everythign that is not in this list >zap<
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  }
}