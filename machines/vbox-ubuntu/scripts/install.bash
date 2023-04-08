#!/bin/bash

sudo apt install curl -y

bash ~/dotfiles/commons/scripts/install.bash

. /home/gaetan/.nix-profile/etc/profile.d/nix.sh


home-manager -f ~/dotfiles/machines/vbox-ubuntu/nix/home.nix switch
