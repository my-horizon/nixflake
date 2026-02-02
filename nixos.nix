{ inputs, self, ... }:
{
  flake = {
    nixosModules = {
      programs = ./programs.nix;
      services = ./services.nix;
      nvf = ./nvf.nix;
    };

    nixosConfigurations.desktop = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        self.nixosModules.programs
        self.nixosModules.services
        inputs.nvf.nixosModules.default
        self.nixosModules.nvf
      ];
    };
  };
}
