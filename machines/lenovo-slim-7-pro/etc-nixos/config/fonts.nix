 {config, pkgs, ...}:
 {
 # Fonts

  fonts.fontDir.enable = true;
  fonts.fonts = with pkgs; [
    corefonts # Microsoft
    ubuntu_font_family
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    montserrat
    noto-fonts-extra
    twitter-color-emoji
    fira-code
    fira-code-symbols
    dina-font
    inconsolata
    fira
    source-sans-pro
    proggyfonts
    mplus-outline-fonts.githubRelease
    material-design-icons
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
  ];

}
