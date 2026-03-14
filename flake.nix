{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
	home-manager = {
		url = "github:nix-community/home-manager";
		inputs.nixpkgs.follows = "nixpkgs";
	};
	nixos-apple-silicon.url = "github:nix-community/nixos-apple-silicon";
  };

  outputs = { self, nixpkgs, nixos-apple-silicon, home-manager, ... }: {
		nixosConfigurations = {
			workstation = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				modules = [
<<<<<<< HEAD
					./modules/common/default.nix
					./modules/desktop/default.nix
					./hardware/workstation.nix
					./modules/nvidia.nix
					./modules/hosts/workstation.nix
=======
					./hosts/workstation

>>>>>>> 919b8db (Trash cfg)
					home-manager.nixosModules.home-manager {
						home-manager.users.walhay = ./home/walhay;
					}
				];
			};

			macbook = nixpkgs.lib.nixosSystem {
				system = "aarch64-linux";
				specialArgs = { inherit nixos-apple-silicon; };

				modules = [
<<<<<<< HEAD
					./modules/apple-silicon.nix
					./modules/common/default.nix
					./modules/desktop/default.nix
					./hardware/macbook.nix
					./modules/hosts/macbook.nix
=======
					./hosts/macbook

>>>>>>> 919b8db (Trash cfg)
					home-manager.nixosModules.home-manager {
						home-manager.users.walhay = ./home/walhay;
					}
				];
			};
		};
  };
}
