#!/bin/bash

sudo apt install curl -y

bash ~/dotfiles/commons/scripts/install.bash

. /home/gaetan/.nix-profile/etc/profile.d/nix.sh


home-manager -f ~/dotfiles/machines/vbox-ubuntu/nix/home.nix switch -b override

echo fs.inotify.max_user_watches=66536 | sudo tee -a /etc/sysctl.conf
