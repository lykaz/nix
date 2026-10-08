{pkgs, ...}:

{
  home = {
    username = "lukas";
    homeDirectory = "/home/lukas";
    stateVersion = "26.05";
    packages = with pkgs; [
      gram
      git
      firefox
    ];
   };
}
