{
    description = "Bernhard NixOS";

    inputs = {
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
        nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
        home-manager.url = "github:nix-community/home-manager/release-24.05";
        home-manager.inputs.nixpkgs.follows = "nixpkgs-unstable";

        firefox-addons = {
            url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
            inputs.nixpkgs.follows = "nixpkgs";
        };

   };

    outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }@inputs:
	let 
	    lib = nixpkgs.lib;
	    system = "x86_64-linux";
	    pkgs = nixpkgs.legacyPackages.${system};
        pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
	in
    {
		nixosConfigurations.workstation = lib.nixosSystem {
                inherit system;
				modules = [
                    ./system/configuration.nix 
				];
                specialArgs = {
                    inherit pkgs-unstable;
                };
        };

		homeConfigurations = {
			bernhard = home-manager.lib.homeManagerConfiguration {
				inherit pkgs;
				modules = [ ./home ];
                extraSpecialArgs = {
                    inherit pkgs-unstable;
                    inherit inputs;
                };
			};
		};
    };
}
