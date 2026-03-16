{ pkgs, config, lib, nixos-apple-silicon, ...}: {
  config = {
  	boot.loader.efi.canTouchEfiVariables = false;
	hardware.asahi.enable = true;

	environment.systemPackages = with pkgs; [
		asahi-audio
	];

	systemd.services.asahi-speakersafetyd.enable = true;
  };

  imports = [
	nixos-apple-silicon.nixosModules.apple-silicon-support
  ];
}
