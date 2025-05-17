{
  description = "Home Manager configuration with Helix nightly";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    helix.url = "github:helix-editor/helix";
  };

  outputs = { self, nixpkgs, home-manager, helix, ... }:
    let
      system = "aarch64-darwin";
        pkgs = import nixpkgs {
        inherit system;
        overlays = [];
      };
    in {
      homeConfigurations.ixsploit = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit helix; }; 
        modules = [ ./home.nix ];
      };
    };
}

