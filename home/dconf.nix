{ pkgs, ...}:

let
  wallpaper_dark = pkgs.fetchurl {
    url = "https://wallhaven.cc/w/x1xvjo";
    sha256 = "1bqcg7qlxsm2dqg9f8ljgknsc9ssrxsql0f9xarzci7axffd69lm";
  };
in
{
  dconf.settings = {
    "org/gnome/desktop/background" = {
      picture-uri = "file://${wallpaper_dark}";
      picture-uri-dark = "file://${wallpaper_dark}";
      picture-options = "zoom";
    };
  };
}
