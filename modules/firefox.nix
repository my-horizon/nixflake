{ ... }:
{
  flake.nixosModules.firefox = {
    home-manager.users.unknown = {
      programs.firefox = {
        enable = true;

        profiles.default = {
          isDefault = true;

          settings = {

            "browser.startup.homepage" = "about:blank";

            "privacy.trackingprotection.enabled" = true;
            "privacy.donottrackheader.enabled" = false;
            "privacy.send_pings" = false;

            "browser.newtabpage.activity-stream.showSponsored" = false;
            "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
            "extensions.pocket.enabled" = false;
            "browser.discovery.enabled" = false;
          };
        };
      };
    };
  };
}
