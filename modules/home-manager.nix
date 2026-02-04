{ inputs, ... }:
{
  flake.nixModules.home-manager = {
    imports = [ inputs.home-manager.nixosModules.home-manager ];

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
