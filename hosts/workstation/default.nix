{ pkgs, lib, ...}: {
  imports = [
	./hardware-configuration.nix
	../../modules/nvidia.nix
	../../modules/common/default.nix
	../../modules/desktop/default.nix
  ];

  networking.hostName = "workstation";
}
