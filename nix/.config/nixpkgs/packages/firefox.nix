{ pkgs, ... }: {
   programs.firefox = {
    enable = true;
       profiles.default = {
      id = 0;
      name = "Default";
      isDefault = true;
    };
    extensions = with pkgs.nur.repos.rycee.firefox-addons; [
      ublock-origin
      lastpass-password-manager
      react-devtools
      news-feed-eradicator
      metamask
      reduxdevtools
      tokyo-night-v2
    ];
  };
}
