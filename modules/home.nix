{ inputs, ... }:
{
  flake.nixosModules.home = {
    imports = [ inputs.home-manager.nixosModules.home ];

    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;

      users.unknown = {
        home.stateVersion = "25.11";
        programs.home-manager.enable = true;
      };
    };
  };
}
