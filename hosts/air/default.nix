{ pkgs, inputs, ... }: 
{  
  nix.settings.experimental-features = "nix-command flakes";

  system.stateVersion = 6;

  imports = [ 
    ../../modules/darwin/default.nix
    ../../modules/darwin/brew-packages.nix 
  ];

  system.primaryUser = "lukas";

  users.users.lukas = {
    name = "lukas";
    home = "/Users/lukas";
  };

  networking.hostName = "air";
}
