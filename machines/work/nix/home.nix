{ config, pkgs, lib, ... }:
let
  cfg = config.customHomeProfile.GUI;
in {
  imports = [
    # Host specific config
    ./home-manager/programs.nix
    ./home-manager/generate-files.nix
    ./home-manager/fonts.nix

    # common global
    ./home-manager/common/packages/autorandr.nix
    ./home-manager/common/packages/firefox.nix
    ./home-manager/common/packages/vscode.nix
    ./home-manager/packages/i3.nix
    ./home-manager/common/packages/kitty.nix
    /* ./home-manager/packages/rofi.nix */
    ./home-manager/common/packages/git.nix
    ./home-manager/common/services/dunst.nix
    /* ./home-manager/services/sxhkd.nix */
    ../../../users/user.nix
    ./home-manager/common/packages/shell.nix
    ./home-manager/common/packages/tmux.nix
    ./home-manager/common/misc/overlays.nix
    ./home-manager/common/misc/gtk.nix
    #./home-manager/common/misc/xsession.nix
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  nixpkgs.config.allowUnfree = true;

  /* nixpkgs.overlays = [ */
  /*   (import (builtins.fetchTarball { */
  /*     url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz; */
  /*   })) */
  /* ]; */

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

}
