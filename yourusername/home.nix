{pkgs, ...}: {
  imports = [
    ../../home/core.nix
    ../../home/programs
    ../../home/shell
  ];

  programs.git = {
    userName = "{yourusername}";
    userEmail = "{your@githubemail.dev}";
  };
}
