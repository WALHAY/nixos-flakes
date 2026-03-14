{ pkgs, lib, ...}: {
  nvidia.enable = false;

  networking.hostName = "workstation";
  networking.networkmanager.enable = true;
}
