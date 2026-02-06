{ ... }:
{
  flake.nixosModules.thunderbird = {
    home-manager.users.unknown = {
      programs.thunderbird = {
        enable = true;

        profiles.default = {
          isDefault = true;
        };
      };
      accounts.email.accounts.strato = {
        primary = true;
        realName = "";
        address = "mail@virtualhorizon.de";
        userName = "mail@virtualhorizon.de";

        imap = {
          host = "imap.strato.de";
          port = 993;
          tls.enable = true;
        };

        smtp = {
          host = "smtp.strato.de";
          port = 465;
          tls.enable = true;
        };

        thunderbird = {
          enable = true;
          profiles = [ "default" ];
        };
      };
    };
  };
}
