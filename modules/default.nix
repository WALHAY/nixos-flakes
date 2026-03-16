{
  imports = [
    ./common
    ./desktop
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
