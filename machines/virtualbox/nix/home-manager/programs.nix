{ pkgs, nixGL, ... }:
let
  unstable = import <nixos-unstable> { overlays = []; };
/* let nixGL = (import (pkgs.fetchFromGitHub { */
/* 	owner = "guibou"; */
/* 	repo = "nixGL"; */
/* 	rev = "7d6bc1b21316bab6cf4a6520c2639a11c25a220e"; */
/* 	sha256 = "02y38zmdplk7a9ihsxvnrzhhv7324mmf5g8hmxqizaid5k5ydpr3"; */

/*   }) {}).nixGLDefault; */

in {
  # Let Home Manager install and manage itself.
  # programs.home-manager.enable = true;
  home.packages = with pkgs; [
    # Enable opengl
    # CLI
    bottom
    tmux
    git
    curl
    jq
    httpie
    fzf
    ripgrep
    xclip
    figlet
    lolcat
    stow
    fish
    gcc
    libstdcxx5
    sxhkd


    # DEV
    fishPlugins.pure
    # Android (react native)
    watchman
    /* android-tools */
    # pkgs.vimPlugins.packer-nvim

    # Runtime

    # Node
    nodejs-16_x
    yarn

    # GUI
    autorandr
    acpi
    kitty
    feh
    xdo
    light
    pamixer
    libnotify
    pavucontrol
    ledger-live-desktop
    libreoffice
    gnome.gnome-screenshot
    xmind

    # services

    # browsers
    microsoft-edge
    brave
    google-chrome
    # firefox # listed in firefox

    # graphics
    blender
    gimp
    krita
    darktable
    inkscape
    fontforge
    scribus
    neovim
    bun
    # office
    libreoffice
  ] ++ (with unstable; [
    # Runtime

  ]);
}
