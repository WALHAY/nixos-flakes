{ config, lib, ...}: {
	apple-silicon.enable = true;

  	networking.hostName = "workstation";
  	networking.networkmanager.enable = true;
}
