{ config, lib, pkgs, ... }: {
  # Desktop/Wayland only
  programs.niri.enable = true;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };
  
  hardware.graphics.enable = true;
  hardware.opengl.driSupport32Bit = true;

  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    nvidiaSettings = true;
  };
}
