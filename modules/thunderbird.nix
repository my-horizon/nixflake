{ ... }:
{
  flake.nixosModules.thunderbid = {
    home-manager.users.unknown = {
      programs.thunderbird = {
        enable = true;

        profiles.default = {
          isDefault = true;
        };
      };
    };
  };
}
