{ config, pkgs, lib, ... }:
let
  mod = "Mod4";
  cfg = config.customHomeProfile.GUI;
in {
  imports = [
    ./packages/firefox.nix
    ./packages/vscode.nix
    ./packages/i3-gaps.nix
    ./packages/rofi.nix
    ./packages/git.nix
    ./packages/autorandr.nix
    # ./packages/polybar.nix
    ./services/dunst.nix
    ./services/sxhkd.nix
    ./user.nix
    ./shell.nix
    ./gtk.nix
    ./xsession.nix
    ./programs.nix
    ./desktop-files.nix
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

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
    }))
  ];

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

}
