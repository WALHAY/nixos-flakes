{ pkgs, ... }:
{
  home.username = "walhay";
  home.homeDirectory = "/home/walhay";

  nixpkgs.config.permittedInsecurePackages = [
    "beekeeper-studio-5.5.7"
  ];

  home.packages = with pkgs; [
    ghostty
    firefox
    telegram-desktop
    chezmoi
    zsh
    noctalia-shell
    yandex-music
    fastfetch
    postman
    beekeeper-studio
    gradle
    zulu25
    kotlin
    kotlin-language-server
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };
  };

  programs.starship = {
    enable = true;
  };

  services.ssh-agent.enable = true;

  nixpkgs.config.allowUnfree = true;

  # Home Manager settings
  home.stateVersion = "25.11";
}
