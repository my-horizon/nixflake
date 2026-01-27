{ inputs, ... }:
{
  flake = {
    nixosConfigurations.desktop = inputs.nixpkgs.lib.nixosSystem {
      modules = [
        ./configuration.nix
        ./programs.nix
        ./services.nix
        inputs.nvf.nixosModules.default
        ./nvf.nix
      ];
    };
  };
}
