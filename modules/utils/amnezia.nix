{ pkgs, configs, ...}:
{

environment.systemPackages = with pkgs; [
	amneziawg-go
	amneziawg-tools
];
}
