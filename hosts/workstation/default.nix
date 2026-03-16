{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nvidia.nix
    ../../modules
  ];

  networking.hostName = "workstation";
}
