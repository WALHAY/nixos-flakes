{ config, lib, ...}: {
	imports = [
		./hardware-configuration.nix
		../../modules/asahi.nix
		../../modules/common/default.nix
		../../modules/desktop/default.nix
	];

  	networking.hostName = "macbook";
}
