# install nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# CLI
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

# dev
nix-env -iA nixpkgs.kitty
nix-env -iA nixpkgs.vscode

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
# node modules

