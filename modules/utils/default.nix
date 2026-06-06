{ pkgs, ... }:
{
	imports = [
		./wireguard.nix
	];

  environment.systemPackages = with pkgs; [
    unzip
  ];
}
