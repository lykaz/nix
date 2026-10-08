{
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github.com" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/github.com";
        extraOptions.IdentitiesOnly = "yes";
      }
    }
  }
}
