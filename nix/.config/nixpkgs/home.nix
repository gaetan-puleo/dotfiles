{ config, pkgs, lib, ... }:
let
  cfg = config.customHomeProfile.GUI;
  nixGL = (import (pkgs.fetchFromGitHub {
	owner = "guibou";
	repo = "nixGL";
	rev = "7d6bc1b21316bab6cf4a6520c2639a11c25a220e";
	sha256 = "02y38zmdplk7a9ihsxvnrzhhv7324mmf5g8hmxqizaid5k5ydpr3";
	
  }) {}).nixGLDefault;
in {
  /* config = lib.mkIf cfg.enable (lib.mkMerge [ */
    /* (lib.mkIf pkgs.stdenv.isLinux { */
     # @TODO add statics icons
      home.file = {
        ".local/share/applications/firefox.desktop" = {
          text = ''
            [Desktop Entry]
            Categories=Network;WebBrowser
            Exec=nixGL firefox -P Default %U
            GenericName=Web Browser
            Icon=${pkgs.firefox}/share/icons/hicolor/128x128/apps/firefox.png
            MimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp
            Name=Firefox
            Type=Application
            Version=1.4
            Terminal=False
            Actions=private_window;
            [Desktop Action private_window]
            Name=Open a Private Window
            Icon=${pkgs.firefox}/share/icons/hicolor/128x128/apps/firefox.png
            Exec=nixGL firefox -P Private %U
          '';
          executable = true;
        };
      ".local/share/applications/kitty.desktop" = {
          text = ''
            [Desktop Entry]
            Categories=Development;System
            Exec=nixGL kitty
            GenericName=Terminal
            Icon=${pkgs.kitty}/share/icons/hicolor/256x256/apps/kitty.png
            Name=Kitty
            Type=Application
            Version=1.4
            Terminal=False
          '';
          executable = true;
        };

      ".local/share/applications/blender.desktop" = {
          text = ''
            [Desktop Entry]
            Categories=Graphics
            Exec=nixGL blender
            GenericName=Blender
            Icon=${pkgs.blender}/share/icons/hicolor/scalable/apps/blender.svg
            Name=Blender
            Type=Application
            Version=1.4
            Terminal=False
          '';
          executable = true;
        };
      };
    /* }) */
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
  nixpkgs.config.allowUnfree = true;
 
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
    }))
    /* (self: super: { */
    /*   nix_gl_go = (import (fetchGit { */
    /*       ref = "main"; */
    /*       url = "https://github.com/guibou/nixGL.git"; */
    /*   }) {}).nixGL; */
    /*   nix_gl = program: pkgs.writeShellScriptBin program.pname '' */
    /*   ${self.nix_gl_go}/bin/nixGL ${program}/bin/${program.pname} "$@" */
    /*   ''; */
    /* }) */
  ];


  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };
  # Let Home Manager install and manage itself.
  # programs.home-manager.enable = true; 
  home.packages = with pkgs; [
    # Enable opengl
    nixGL
    # CLI
    bottom
    tmux
    git
    curl
    jq
    httpie
    fzf
    ripgrep
    neofetch
    docker 
    docker-compose
    xclip
    figlet
    lolcat
    stow
    fish
    gcc
    libstdcxx5 
 
    # DEV
    neovim
    # pkgs.vimPlugins.packer-nvim
 
    # Node
    nodejs-16_x
    yarn

    # GUI
    # pkgs.firefox
    polybar
    acpi
    kitty
    blender
  ];
	/*   programs.kitty = { */
	/*     enable = true; */
	/*     package = pkgs.writeShellScriptBin "kitty" '' */
	/* #!/bin/sh */
	/* ${nixGL}/bin/nixGL ${pkgs.kitty}/bin/kitty "$@" */
	/*     ''; */
	/*   }; */

  programs.firefox = {
    enable = true;
       profiles.default = {
      id = 0;
      name = "Default";
      isDefault = true;
    };
    extensions = with pkgs.nur.repos.rycee.firefox-addons; [
      ublock-origin
      lastpass-password-manager
      react-devtools
      news-feed-eradicator
      metamask
      reduxdevtools
    ];
  };

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      dbaeumer.vscode-eslint
      pkief.material-icon-theme
      zhuangtongfa.material-theme
    ];
  };
}
