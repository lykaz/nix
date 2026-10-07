{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05
  }
  
  outputs = { self, nixpkgs}: {
    nixosConfigurations = {
      laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
      }
    }
  }
}
