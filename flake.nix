{
  description = "system config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    # Funky home manager stuff
    # to install packages "locally"
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Funky brew stuff
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew"
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager }:
  let
    pkgsDarwin = import nixpkgs {
      system = "aarch64-darwin";
      config = { allowUnfree = true; };
    };

    pkgsLinux = nixpkgs.legacyPackages.x86_64-linux; # future work
  in
  {
    darwinConfigurations.air = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      pkgs = pkgsDarwin;
      modules = [
      #  ./modules/shared  # For system related configs
       ./modules/air

        home-manager.darwinModules.home-manager{
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.lukas = {
            imports = [
              ./modules/shared/home.nix
              ./modules/air/home.nix
            ];
          };
        }

        nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            enable = true;
            enableRosetta = true;
            user = "lukas";
            mutableTaps = false;
          };
        }
      ];
    };
  };
}
