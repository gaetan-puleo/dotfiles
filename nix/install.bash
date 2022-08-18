# install nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

nix-env --version

#fonts 
nix-env -iA nixpkgs.noto-fonts
nix-env -iA nixpkgs.noto-fonts-emoji
nix-env -iA nixpkgs.libertine
nix-env -iA nixpkgs.dejavu_fonts

#UI
nix-env -iA nixpkgs.gsimplecal
nix-env -iA nixpkgs.dunst
nix-env -iA nixpkgs.picom
nix-env -iA nixpkgs.i3-gaps
nix-env -iA nixpkgs.polybar
nix-env -iA nixpkgs.lxappearance
nix-env -iA nixpkgs.lxde.lxrandr
nix-env -iA nixpkgs.rofi

# CLI tools
nix-env -iA nixpkgs.light
nix-env -iA nixpkgs.sxhkd
nix-env -iA nixpkgs.httpie
nix-env -iA nixpkgs.git
nix-env -iA nixpkgs.fish
nix-env -iA nixpkgs.neovim
nix-env -iA nixpkgs.ripgrep
nix-env -iA nixpkgs.jq
nix-env -iA nixpkgs.fzf
nix-env -iA nixpkgs.tmux
nix-env -iA nixpkgs.docker
nix-env -iA nixpkgs.docker-compose
nix-env -iA nixpkgs.wmctrl
nix-env -iA nixpkgs.autorandr
nix-env -iA nixpkgs.xorg.xmodmap
nix-env -iA nixpkgs.xclip
nix-env -iA nixpkgs.ranger
nix-env -iA nixpkgs.xdo
nix-env -iA nixpkgs.neofetch

# dev
nix-env -iA nixpkgs.kitty
nix-env -iA nixpkgs.vscode
nix-env -iA nixpkgs.firefox

# browsers
nix-env -iA nixpkgs.google-chrome

# tools
nix-env -iA nixpkgs.peek
nix-env -iA nixpkgs.gimp
nix-env -iA nixpkgs.libreoffice
nix-env -iA nixpkgs.inkscape
nix-env -iA nixpkgs.scribus
nix-env -iA nixpkgs.blender

# ledger
nix-env -iA nixpkgs.ledger-udev-rules
nix-env -iA nixpkgs.ledger-live-desktop

#rpi
nix-env -iA nixpkgs.rpi-imager
