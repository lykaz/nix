{
  users.users = {
    "lukas" = {
      isNormalUser = true;
      description = "Master of the Universe";
      extraGroups = [ "networkmanager" "wheel" ];

      # openssh.authorizedKeys.keys = [
      # "ssed-edd25519 dskndfagfg ..."
      # ]
    };
  };
}
