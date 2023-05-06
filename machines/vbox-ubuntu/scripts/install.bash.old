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

# flatpak

# DEV
flatpak install -y --noninteractive flathub com.visualstudio.code

# job
flatpak install -y --noninteractive flathub com.discordapp.Discord
flatpak install -y --noninteractive flathub com.slack.Slack

# graphic
flatpak install -y --noninteractive flathub org.kde.kdenlive
flatpak install -y --noninteractive flathub org.gimp.GIMP
flatpak install -y --noninteractive flathub org.kde.krita

# browser
flatpak install -y --noninteractive flathub org.mozilla.firefox
flatpak install -y --noninteractive flathub com.google.Chrome
flatpak install -y --noninteractive flathub com.microsoft.Edge

figlet "welcome home \n Gaetan"| lolcat
