{ pkgs, lib, ...}: {
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  
  system.stateVersion = "25.11";
}
