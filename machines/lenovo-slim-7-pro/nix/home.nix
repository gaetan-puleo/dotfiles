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
    ./home-manager/packages/firefox.nix
    ./home-manager/packages/vscode.nix
    ./home-manager/packages/kitty.nix
    ./home-manager/packages/git.nix
    ./user.nix
    ./home-manager/packages/shell.nix
    ./home-manager/packages/tmux.nix
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
