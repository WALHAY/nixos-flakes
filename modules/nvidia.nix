{ config, lib, ... }: {
  options.nvidia.enable = lib.mkEnableOption "NVidia Graphics";
  
  config = lib.mkIf config.nvidia.enable {
  	hardware.nvidia = {
  	  open = true;
  	  modesetting.enable = true;
  	  package = config.boot.kernelPackages.nvidiaPackages.stable;
  	  nvidiaSettings = true;
  	};
  };
}
