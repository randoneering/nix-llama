{pkgs, ...}: {
  home.packages = [pkgs.gh];

  programs.git = {
    enable = true;
    userName = "{yourusername}";
    userEmail = "{yourusername@email.com}";
    signing = {
      format = "ssh";
      key = "~/.ssh/yourfavoritessh.key";
    };
  };
}
