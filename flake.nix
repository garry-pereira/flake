{
  description = "flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, home-manager, nix-darwin, nixpkgs }: {
    darwinConfigurations."m1" = nix-darwin.lib.darwinSystem {
      modules = [
	./modules/darwin/packages.nix
	./modules/darwin/fonts.nix
	./modules/darwin/defaults.nix
	./modules/darwin/meta.nix
	./modules/darwin/users.nix

	home-manager.darwinModules.home-manager {
	  # hm will point to system's sources for packages
          home-manager.useGlobalPkgs = true;

	  # hm will not hide away installed packages into it's own profile, it will show for the user's profile, use: nix-env -q
	  home-manager.useUserPackages = true;

	  # hm configuration for (user: self) on (profile: m1)
	  home-manager.users.self = import ./modules/home_manager/m1.nix;
	}
      ];
      specialArgs = { inherit self; };
    };
  };
}
