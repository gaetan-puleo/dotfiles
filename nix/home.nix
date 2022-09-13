{ config, pkgs, lib, ... }:
let
  cfg = config.customHomeProfile.GUI;
in {
  imports = [
    ./home-manager/packages/firefox.nix
    ./home-manager/packages/vscode.nix
    ./home-manager/packages/i3-gaps.nix
    ./home-manager/packages/kitty.nix
    ./home-manager/packages/rofi.nix
    ./home-manager/packages/git.nix
    ./home-manager/services/dunst.nix
    ./home-manager/services/sxhkd.nix
    ./home-manager/user.nix
    ./home-manager/overlays.nix
    ./home-manager/shell.nix
    ./home-manager/gtk.nix
    ./home-manager/xsession.nix
    ./home-manager/programs.nix
    ./home-manager/generate-files.nix
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
