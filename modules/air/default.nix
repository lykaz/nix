{ pkgs, ... }: {
  nix.settings.experimental-features = "nix-command flakes";

  system.stateVersion = 6;

  users.users.lukas = {
    name = "lukas";
    home = "/Users/lukas";
  };
}