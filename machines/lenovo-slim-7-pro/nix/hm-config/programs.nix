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
    ######################################
    #
    # Terminal
    #
    ######################################
    bottom
    jq
    curl
    httpie
    fzf
    ripgrep
    xclip
    figlet
    lolcat
    gcc
    libstdcxx5
    gnumake
    wget
    tmux

    # DEV
    fishPlugins.pure
    # Android (react native)
    watchman
    android-tools
    # pkgs.vimPlugins.packer-nvim

    # Runtime


    ######################################
    #
    # DEV
    #
    ######################################

    # CLI
    fish
    git
    tmux
    neofetch
    # distrobox

    # IDE
    neovim

    # JS
    nodejs-18_x
    yarn

    # GUI
    acpi
    kitty
    gnome.gnome-screenshot
    xmind

    ######################################
    #
    # Mail
    #
    ######################################
    evolution

    ######################################
    #
    # Browsers
    #
    ######################################
    # firefox # listed in firefox

    ######################################
    #
    # Graphics
    #
    ######################################

    ######################################
    #
    # Office
    #
    ######################################
  ] ++ (with unstable; [
    distrobox
  ]);
}
