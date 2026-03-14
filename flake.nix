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

  outputs = { self, nixpkgs, nixos-apple-silicon, home-manager, import-tree, ... }: {
		nixosConfigurations = {
			workstation = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				modules = [
					(import-tree ./modules)
					./hardware/workstation.nix
					home-manager.nixosModules.home-manager {
						home-manager.users.walhay = ./home/walhay.nix;
					}
				];
			};

			macbook = nixpkgs.lib.nixosSystem {
				system = "aarch64-linux";
				specialArgs = { inherit nixos-apple-silicon; };

				modules = [
					(import-tree ./modules)
					./hardware/macbook.nix
					home-manager.nixosModules.home-manager {
						home-manager.users.walhay = ./home/walhay.nix;
					}
				];
			};
		};
  };
}
