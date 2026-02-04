{ inputs, ... }:
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

          extensions.packages = with inputs.nur.legacyPackages.x86_64-linux.repos.rycee.firefox-addons; [
            bitwarden
            vimium
            darkreader
          ];

          bookmarks = {
            force = true;
            settings = [
              {
                name = "Toolbar";
                toolbar = true;
                bookmarks = [
                  {
                    name = "claude";
                    url = "https://claude.ai";
                  }
                  {
                    name = "github";
                    url = "https://github.com";
                  }
                  {
                    type = "divider";
                  }
                  {
                    name = "gateway";
                    url = "https://192.168.1.1";
                  }
                  {
                    name = "nas";
                    url = "http://192.168.10.150:5000";
                  }
                  {
                    name = "portainer";
                    url = "http://192.168.10.150:8080";
                  }
                  {
                    name = "adguard";
                    url = "http://192.168.10.150:8081";
                  }
                  {
                    type = "divider";
                  }
                  {
                    name = "nextcloud";
                    url = "http://192.168.10.150:8180";
                  }
                  {
                    name = "immich";
                    url = "http://192.168.10.150:8181";
                  }
                  {
                    type = "divider";
                  }
                  {
                    name = "akad";
                    url = "https://akad-campus.de";
                  }
                ];
              }
            ];
          };
        };
      };
    };
  };
}
