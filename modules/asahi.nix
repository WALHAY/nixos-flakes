{ pkgs, config, lib, nixos-apple-silicon, ...}: {
  imports = [
	nixos-apple-silicon.nixosModules.apple-silicon-support
  ];

  config = {
  	boot.loader.efi.canTouchEfiVariables = false;

	hardware.asahi.enable = true;

	services.xserver.videoDrivers = [ "asahi" ];
  };
}
