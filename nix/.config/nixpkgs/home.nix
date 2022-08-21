{ config, pkgs, ... }:
 
{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "gaetan";
  home.homeDirectory = "/home/gaetan";
 
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";
 
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
    }))
  ];
  # Let Home Manager install and manage itself.
  # programs.home-manager.enable = true; 
  home.packages = [

    # CLI
    pkgs.bottom
    pkgs.tmux
    pkgs.git
    pkgs.curl
    pkgs.jq
    pkgs.httpie
    pkgs.fzf
    pkgs.ripgrep
    pkgs.neofetch
    pkgs.docker 
    pkgs.docker-compose
    pkgs.xclip
    pkgs.figlet
    pkgs.lolcat
    pkgs.stow
    pkgs.fish
    pkgs.gcc
    pkgs.libstdcxx5 
 
    # DEV
    pkgs.neovim
    # pkgs.vimPlugins.packer-nvim
 
    # Node
    pkgs.nodejs-16_x
    pkgs.yarn

    # GUI
    pkgs.firefox

    #I3
    pkgs.polybar 
    pkgs.dunst 
    pkgs.gsimplecal 
    pkgs.sxhkd 
    pkgs.picom 
    pkgs.rofi
    pkgs.feh
    pkgs.light
    pkgs.xdo
    pkgs.noto-fonts-emoji 
    pkgs.noto-fonts 
    pkgs.material-design-icons 
    pkgs.libertine
  ];
}
