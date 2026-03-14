{
  description = "system config";

  inputs = {
  nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    pkgsDarwin = nixpkgs.legacyPackages.aarch64-darwin;
    pkgsLinux = nixpkgs.legacyPackages.x86_64-linux; # future work
  in
  {
    darwinConfigurations.air = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      pkgs = pkgsDarwin;
      modules = [
        ./modules/shared
        ./modules/air
      ];
    };
  };
}
