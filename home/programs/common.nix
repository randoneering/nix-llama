{pkgs, ...}: {
  home.packages = with pkgs; [
    # archives
    zip

    # utils
    awscli2
    btop
    ripgrep
    nfs-utils
    git
    wget

  ];
}
