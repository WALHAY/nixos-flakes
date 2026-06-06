{ pkgs, ... }:
{
	imports = [
		./amnezia.nix
	];

  environment.systemPackages = with pkgs; [
    unzip
  ];
}
