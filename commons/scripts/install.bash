#!/bin/bash

# require
# - curl

# install nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

. /home/gaetan/.nix-profile/etc/profile.d/nix.sh

# add channel
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager

nix-channel --update

. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

# install home manager
nix-shell '<home-manager>' -A install

