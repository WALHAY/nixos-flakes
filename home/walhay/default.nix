{ config, pkgs, ... }:
{
  home.username = "walhay";
  home.homeDirectory = "/home/walhay";

  home.packages = with pkgs; [
    ghostty
    firefox
    telegram-desktop
    chezmoi
    starship
	zsh
	noctalia-shell
	yandex-music
	fastfetch
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
    initContent = ''
      eval "$(starship init zsh)"
    '';
  };

  nixpkgs.config.allowUnfree = true;

  # Home Manager settings
  home.stateVersion = "25.11";
}
