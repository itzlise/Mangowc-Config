{
	description = "Flake";

	inputs = {
		nixpkgs.url = "nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		mangowm = {
			url = "github:mangowm/mango";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { nixpkgs, home-manager, self, mangowm, ... }: {
		inherit (nixpkgs) lib;
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [
				mangowm.nixosModules.mango
				./configuration.nix
				home-manager.nixosModules.home-manager
				{
					home-manager = {
						useGlobalPkgs = true;
						useUserPackages = true;
						users.lis = import ./home.nix;
						backupFileExtension = "backup";
					};
				}
			];
		};
	};

}
