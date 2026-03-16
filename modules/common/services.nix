{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    brightnessctl
    wireplumber
    pavucontrol
    blueman
    acpi
  ];

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };

  services.upower.enable = true;
}
