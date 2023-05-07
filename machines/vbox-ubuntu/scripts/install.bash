#!/bin/bash

# requirement
sudo --version
sudo apt install -y curl

echo fs.inotify.max_user_watches=66536 | sudo tee -a /etc/sysctl.conf

sudo apt install -y flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


# nix
bash ~/dotfiles/commons/scripts/install.bash

. /home/gaetan/.nix-profile/etc/profile.d/nix.sh

home-manager -f ~/dotfiles/machines/vbox-ubuntu/nix/home.nix switch -b override



figlet "welcome home \n Gaetan| lolcat
