{ config, pkgs, lib, ... }:
let
  cfg = config.customHomeProfile.GUI;
  dotfilePath = "${config.home.homeDirectory}/dotfiles";
  mqchinePath = "${dotfilePath}/machines/lenovo-slim-7-pro";
in {
  imports = [
    # Host specific config
    ./hm-config/gnome.nix

    ./hm-config/programs.nix
    ./hm-config/programs/firefox.nix
    ./hm-config/programs/kitty.nix
    ./hm-config/programs/git.nix
    ./hm-config/programs/tmux.nix
    ./hm-config/programs/nvim.nix

    ./hm-config/shell.nix
    ./hm-config/user.nix
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;

  manual.manpages.enable = false;

  nixpkgs.config.allowUnfree = true;

  /*nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };*/


  /*home.pointerCursor = {
    x11 = {enable = true;};
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors;
    size = 32;
  }; */

}
