{ pkgs, ... }:
{
  programs.niri.enable = true;
  
  services.displayManager.gdm = {
    enable = true;
    wayland = true;
  };

  services.displayManager.defaultSession = "niri";

  hardware.graphics = {
    enable = true;
    package = pkgs.mesa;
  };
}
