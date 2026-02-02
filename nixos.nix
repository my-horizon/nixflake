{ inputs, ... }:
{
  flake = {
    nixosConfigurations.desktop = inputs.nixpkgs.lib.nixosSystem {
      system = [ "x86_64-linux" ];
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
