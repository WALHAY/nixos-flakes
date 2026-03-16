{
  imports = [
    ./hardware-configuration.nix
    ../../modules/asahi.nix
    ../../modules
  ];

  networking.hostName = "macbook";
}
