{
  imports = [
    ./common
    ./desktop
	./services
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
