#!/bin/bash

# require
# - curl

# install nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

. ~/.nix-profile/etc/profile.d/nix.sh

# add channel
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager

nix-channel --update

. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

# install home manager
nix-shell '<home-manager>' -A install

# gnome settings
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:ctrl_modifier']"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# . /home/gaetan/dotfiles/distrobox/arch/install.bash
