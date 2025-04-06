{ config, pkgs, helix, ... }:

{
  home.username = builtins.getEnv "USER";
  home.homeDirectory = builtins.getEnv "HOME";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    azure-cli 
    bash
    bat
    fd
    fish
    fzf
    gh
    ghidra
    gnupg
    gopls
    hexyl
    hyperfine
    ipcalc
    k9s
    python312Packages.jedi-language-server
    rio
    ruff
    rustup
    opentofu
    uv
    yaml-language-server
    yazi
    zellij

    helix.packages.${pkgs.system}.helix
  ];

  programs.home-manager.enable = true;
}

