{ pkgs, ...}:

let
  wallpaper_dark = pkgs.fetchurl {
    url = "https://w.wallhaven.cc/full/x1/wallhaven-x1xvjo.jpg";
    sha256 = "0in229wlgm8zz4fc80ajas60mlklhqclsp8gxsdydd32zks80wyy";
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
