{ inputs, ... }:
{
  flake.nixosModules.firefox = {
    home-manager.users.unknown = {
      programs.firefox = {
        enable = true;

        profiles.default = {
          isDefault = true;

          settings = {
            # homepage
            "browser.startup.homepage" = "about:blank";
            # tracking policies
            "privacy.trackingprotection.enabled" = true;
            "privacy.trackingprotection.socialtracking.enabled" = true;
            "privacy.trackingprotection.cryptomining.enabled" = true;
            "privacy.trackingprotection.fingerprinting.enabled" = true;
            "privacy.annotate_channels.strict_list.enabled" = true;
            "network.cookie.cookieBehavior" = 5;
            # delete cookies/data on exit
            "privacy.sanitize.sanitizeOnShutdown" = true;
            "privacy.clearOnShutdown.cookies" = true;
            "privacy.clearOnShutdown.cache" = true;
            "privacy.clearOnShutdown.offlineApps" = true;
            # deactivate passwords
            "signon.rememberSignons" = false;
            "signon.autofillForms" = false;
            "signon.generation.enabled" = false;
            "signon.management.page.breach-alerts.enabled" = false;
            "signon.firefoxRelay.feature" = "disabled";
            # deactivate pay methods
            "dom.payments.defaults.saveAddress" = false;
            "extensions.formautofill.creditCards.enabled" = false;
            # deactivate address saving
            "extensions.formautofill.addresses.enabled" = false;
            # disable chronic
            "browser.privatebrowsing.autostart" = true;
            "places.history.enabled" = false;
            #disable popups
            "dom.disable_open_during_load" = true;
            # disable data collection
            "datareporting.healthreport.uploadEnabled" = false;
            "datareporting.policy.dataSubmissionEnabled" = false;
            "toolkit.telemetry.enabled" = false;
            "toolkit.telemetry.unified" = false;
            "toolkit.telemetry.pioneer-new-studies-available" = false;
            "app.shield.optoutstudies.enabled" = false;
            "browser.ping-centre.telemetry" = false;
            "browser.crashReports.unsubmittedCheck.autoSubmit2" = false;
            # disable personalized recommendations
            "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" = false;
            "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" = false;
            # activate safe browsing
            "browser.safebrowsing.malware.enabled" = true;
            "browser.safebrowsing.phishing.enabled" = true;
            "browser.safebrowsing.downloads.enabled" = true;
            "browser.safebrowsing.downloads.remote.block_potentially_unwanted" = true;
            "browser.safebrowsing.downloads.remote.block_uncommon" = true;
            # only https
            "dom.security.https_only_mode" = true;
            "dom.security.https_only_mode_ever_enabled" = true;
            # dns over https
            "network.trr.mode" = 2;
            # anything else
            "browser.newtabpage.activity-stream.showSponsored" = false;
            "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
            "browser.discovery.enabled" = false;
            "privacy.donottrackheader.enabled" = false;
            "privacy.send_pings" = false;
            "extensions.pocket.enabled" = false;
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
                    name = "nextcloud";
                    url = "http://192.168.10.150:8180";
                  }
                  {
                    name = "immich";
                    url = "http://192.168.10.150:8181";
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
