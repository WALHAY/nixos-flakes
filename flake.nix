{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
	home-manager = {
		url = "github:nix-community/home-manager";
		inputs.nixpkgs.follows = "nixpkgs";
	};
	nixos-apple-silicon.url = "github:nix-community/nixos-apple-silicon";
	import-tree.url = "github:vic/import-tree";
  };

  outputs = { self, nixpkgs, home-manager, import-tree, ... }: {
		nixosConfigurations = {
			workstation = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				modules = [
					(import-tree ./modules)
					./hardware-configuration.nix
					home-manager.nixosModules.home-manager {
						home-manager.users.walhay = ./home/walhay.nix;
					}
				];
			};
		};
  };
}
