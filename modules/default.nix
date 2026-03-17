{ pkgs, ... }:
{
  imports = [
    ./common
    ./desktop
    ./services
    ./utils
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    zlib
    glib
    openssl
  ];
}
