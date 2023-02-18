{ pkgs, ... }: {
   programs.firefox = {
        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
            # dev
            react-devtools
            reduxdevtools

            # minimalism
            canvasblocker
            ublock-origin
            limit-limit-distracting-sites

            # privacy
            multi-account-containers
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

            # crypto
            metamask

            # tools
            languagetool
            xbrowsersync
        ];
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
