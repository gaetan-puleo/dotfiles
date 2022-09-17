{ pkgs, nixGL, ... }: 
let nixGL = (import (pkgs.fetchFromGitHub {
	owner = "guibou";
	repo = "nixGL";
	rev = "7d6bc1b21316bab6cf4a6520c2639a11c25a220e";
	sha256 = "02y38zmdplk7a9ihsxvnrzhhv7324mmf5g8hmxqizaid5k5ydpr3";
	
  }) {}).nixGLDefault;

in {
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
    sxhkd
    xorg.xmodmap
    xorg.setxkbmap
 
    # DEV
    neovim
    fishPlugins.pure
    # pkgs.vimPlugins.packer-nvim
 
    # Node
    nodejs-16_x
    yarn
    commitizen

    # GUI
    # pkgs.firefox
    autorandr
    acpi
    kitty
    blender
    gsimplecal
    picom
    rofi
    rofi-power-menu
    feh
    xdo
    light
    polybarFull
    pamixer
    i3lock-blur
    libnotify

    # services
    dunst
  ];
}
