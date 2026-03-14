{ config, lib, pkgs, ... }: {
  programs.niri.enable = true;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };
  
  hardware.graphics = {
  	enable = true;
	enable32Bit = true;
  };
}
