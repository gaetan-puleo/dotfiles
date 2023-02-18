{ config, pkgs, lib, ... }:
let
  cfg = config.customHomeProfile.GUI;
in {
  imports = [
    # Host specific config
    ./home-manager/programs.nix
    ./home-manager/generate-files.nix
    ./gnome.nix

    # common global
    ./home-manager/common/packages/autorandr.nix
    ./home-manager/common/packages/firefox.nix
    ./home-manager/common/packages/vscode.nix
    ./home-manager/common/packages/i3-gaps.nix
    ./home-manager/common/packages/kitty.nix
    /* ./home-manager/packages/rofi.nix */
    ./home-manager/common/packages/git.nix
    ./home-manager/common/services/dunst.nix
    /* ./home-manager/services/sxhkd.nix */
    ../../../users/user.nix
    ./home-manager/common/packages/shell.nix
    ./home-manager/common/packages/tmux.nix
    /* ./home-manager/common/misc/overlays.nix */
    ./home-manager/common/misc/gtk.nix
    ./home-manager/common/misc/xsession.nix
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

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  home.pointerCursor = {
    x11 = {enable = true;};
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors;
    size = 32;
  };

}
