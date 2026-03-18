{
  pkgs,
  nixos-apple-silicon,
  ...
}:
{
  imports = [
    nixos-apple-silicon.nixosModules.apple-silicon-support
  ];

  config = {
    boot.loader.efi.canTouchEfiVariables = false;
    hardware.asahi.enable = true;

    environment.systemPackages = with pkgs; [
      asahi-audio
    ];

    hardware.graphics = {
      enable = true;
      package = pkgs.mesa;
    };

    systemd.services.asahi-speakersafetyd.enable = true;
  };
}
