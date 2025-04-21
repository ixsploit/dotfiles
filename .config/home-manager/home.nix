{ config, pkgs, helix, ... }:

{
  nixpkgs.config.allowUnfree = true;
  home.username = "ixsploit";
  home.homeDirectory = "/Users/ixsploit";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    azure-cli 
    bash
    bat
    eksctl
    fd
    fish
    fzf
    gh
    gnupg
    gopls
    kubernetes-helm
    hexyl
    hyperfine
    ipcalc
    k9s
    python312Packages.jedi-language-server
    rio
    ruff
    rustup
    terraform
    opentofu
    uv
    yaml-language-server
    yazi
    zellij
    zoxide
    docker  
    helix.packages.${pkgs.system}.helix
  ];

  programs.home-manager.enable = true;
}
