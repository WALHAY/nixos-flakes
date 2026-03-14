{ config, pkgs, ...}: {
  environment.systemPackages = with pkgs; [ 
  	brightnessctl
	wireplumber
	pavucontrol
	blueman
  ];

  hardware.pulseaudio.enable = false;

  services.pipewire = {
	enable = true;
	alsa.enable = true;
	pulse.enable = true;
	wireplumber.enable = true;
  };
}
