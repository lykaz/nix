{pkgs, ...}:

{
  imports = [
    ./dconf.nix
    ./firefox.nix
    ./ssh.nix
    ./tmux.nix
    ./linux
  ];

  home = {
    username = "lukas";
    homeDirectory = "/home/lukas";
    stateVersion = "26.05";
    packages = with pkgs; [
      gram
      git
      kitty
      discord
    ];
   };
}
