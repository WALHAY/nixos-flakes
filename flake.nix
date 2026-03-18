{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-apple-silicon.url = "github:nix-community/nixos-apple-silicon";
    sysc-greet = {
      url = "github:Nomadcxx/sysc-greet";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      nixos-apple-silicon,
      home-manager,
	  sysc-greet,
      ...
    }:
    {
      nixosConfigurations = {
        workstation = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          modules = [
		  	sysc-greet.nixosModules.default
            ./hosts/workstation
          ];
        };

        macbook = nixpkgs.lib.nixosSystem {
          system = "aarch64-linux";
          specialArgs = { inherit nixos-apple-silicon; };

          modules = [
		  	sysc-greet.nixosModules.default
            ./hosts/macbook

            home-manager.nixosModules.home-manager
            {
              home-manager.users.walhay = ./home/walhay;
            }
          ];
        };
      };
    };
}
