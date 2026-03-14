{ pkgs, config, lib, nixos-apple-silicon, ...}: {
  options.apple-silicon.enable = lib.mkEnableOption "Apple Silicon Chip";

  imports = [
	nixos-apple-silicon.nixosModules.apple-silicon-support
  ];

  config = lib.mkIf config.apple-silicon.enable {
  	boot.loader.efi.canTouchEfiVariables = false;

  hardware.asahi.enable = true;
  hardware.apple.touchBar.enable = false;
  };
}
