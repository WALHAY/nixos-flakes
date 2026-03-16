{ config, ... }:
{

  config = {
    hardware.nvidia = {
      open = true;
      modesetting.enable = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
      nvidiaSettings = true;
    };

    hardware.graphics.enable32Bit = true;
  };
}
