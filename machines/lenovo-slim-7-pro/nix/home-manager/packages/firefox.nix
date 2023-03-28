{ pkgs, ... }:

{
   programs.firefox = {
        /* extensions = with pkgs.nur.repos.rycee.firefox-addons; [
            # dev
            #react-devtools
            reduxdevtools
           #preact-devtools
           (buildFirefoxXpiAddon {
              pname = "preact-devtools";
              version = "4.7.0";
              addonId = "devtools@marvinh.dev";
              url = "https://addons.mozilla.org/firefox/downloads/file/4079432/preact_devtools-4.7.0.xpi";
              sha256 = "090dc4375b9ee1ca5c9da211c99090e9d4948abbd649986f94a2d53953e2d859";
              meta = {};
            })

            # minimalism
            youtube-recommended-videos
            news-feed-eradicator
            youtube-shorts-block
            sponsorblock

            # theme
            tokyo-night-v2

            # password manager
            bitwarden

            # privacy
            i-dont-care-about-cookies
            ublock-origin
            privacy-badger
            canvasblocker
            multi-account-containers
            zoom-redirector

            # crypto
            metamask

            # tools
            languagetool
            xbrowsersync


        ];*/
      enable = true;
      package = pkgs.wrapFirefox pkgs.firefox-unwrapped {
        extraPolicies = {
          DisablePocket = true;
          DisableTelemetry = true;
          NoDefaultBookmarks = true;
          DisableFirefoxStudies = true;
          DisplayBookmarksToolbar = true;
          # useless firefox messages
            UserMessaging = {
            SkipOnboarding = true;
            WhatsNew = false;
            FeatureRecommendations = false;
            UrlbarInterventions = false;
            ExtensionRecommendations = false;
            MoreFromMozilla = false;
          };
          PasswordManagerEnabled = false;
          FirefoxHome = {
            Search = true;
            Pocket = false;
            Snippets = false;
            TopSites = false;
            Highlights = false;
          };
          ExtensionSettings = {
            # Dev tools
            # React dev tools
            "@react-devtools" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/react-devtools/latest.xpi";
            };

            # Preact dev tools
            "devtools@marvinh.dev" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/preact-devtools/latest.xpi";
            };

            # Redux dev tools
            "extension@redux.devtools" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/reduxdevtools/latest.xpi";
            };
            # Bookmarks
            "{019b606a-6f61-4d01-af2a-cea528f606da}" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/xbs/latest.xpi";
            };
            # Theme Tokyonight
            "{7948797a-7980-42ed-95ab-90dcb9a9ab58}" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/tokyo_night/latest.xpi";
            };
            # Zoom Redirector
            "{2d0a18e8-6b0a-4c8c-9256-6e00c01f07fe}" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/zoom-redirector/latest.xpi";
            };
            # PRIVACY

            # I don t car about cookies
            "jid1-KKzOGWgsW3Ao4Q@jetpack" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/i-dont-care-about-cookies/latest.xpi";
            };
            # ublock-origin
            "uBlock0@raymondhill.net" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
            };
            # sponsorblock
            "sponsorBlocker@ajay.app" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/sponsorblock/latest.xpi";

            };
            # bypass paywall firefox clean
            "magnolia@12.34" = {
              installation_mode = "force_installed";
              install_url = "https://gitlab.com/magnolia1234/bpc-uploads/-/raw/master/bypass_paywalls_clean-3.1.0.0.xpi";
            };
            # Digital Minimalism
            # unhook
            "myallychou@gmail.com" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/youtube-recommended-videos/latest.xpi";
            };
            # minimal twitter
            "{e7476172-097c-4b77-b56e-f56a894adca9}" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/languagetool/latest.xpi";
            };
            # Tools
            # languagetool
            "languagetool-webextension@languagetool.org" = {
              installation_mode = "force_installed";
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/minimaltwitter/latest.xpi";
            };
          };
        };
      };
      profiles = {
        default = {
        id = 0;
        name = "Default";
        isDefault = false;
      };

      home = {
        id = 1;
        name = "home";
        isDefault = true;
        search = {
          default = "DuckDuckGo";
        };
      };
    };
  };
}
