{
  imports = [
    ./direnv.nix
    ./sops.nix
  ];

  programs.nix-ld.enable = true; # dynamic binaries run
}
