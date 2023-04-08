#!/bin/bash

# requirement
sudo apt install curl -y

echo fs.inotify.max_user_watches=66536 | sudo tee -a /etc/sysctl.conf

sudo apt install flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


# nix
bash ~/dotfiles/commons/scripts/install.bash

. /home/gaetan/.nix-profile/etc/profile.d/nix.sh

home-manager -f ~/dotfiles/machines/vbox-ubuntu/nix/home.nix switch -b override

# flatpak

# DEV
flatpak install flathub com.visualstudio.code

# job
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.slack.Slack

# graphic
flatpak install flathub org.kde.kdenlive
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.kde.krita

# browser
flatpak install flathub org.mozilla.firefox
flatpak install flathub com.google.Chrome
flatpak install flathub com.microsoft.Edge
