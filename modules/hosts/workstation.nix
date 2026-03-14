{ pkgs, lib, ...}: {
  nvidia.enable = false;

  networking.hostName = "workstation";
}
