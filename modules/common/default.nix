{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [ vim git neovim xwayland xwayland-satellite ];

  time.timeZone = "Europe/Moscow";
  i18n.defaultLocale = "en_US.UTF-8";

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 25;
  };

  services.xserver = {
    xkb = {
      layout = "us, ru";
      options = "caps:escape";
    };
  };

  users.users.walhay = {
    isNormalUser = true;
    description = "WALHAY";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment.shells = [ pkgs.zsh ];

  # Unfree packages (global)
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";
}
