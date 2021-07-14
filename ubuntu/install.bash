#!/bin/bash

CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))
# add more workers

echo "Add more watchers ----------------------"
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
echo "Set gnome wallpaper ---------------------"
gsettings set org.gnome.desktop.background picture-uri file:///${CURR_PATH}/wallpaper.jpg

echo "Set dock to bottom ----------------------"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

echo "Set dock icon size ----------------------"
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 28
# Install packages

# add apt fast
sudo apt-add-repository ppa:apt-fast/stable -y && sudo apt-get update && sudo apt-get -y install apt-fast 
echo "Install packages ----------------------"
sudo apt-fast update -y
sudo apt-fast upgrade -y
sudo apt-fast install -y gcc \
	tar \
	curl \
	jq \
	todotxt-cli \
	httpie \
	gimp gimp-plugin-registry \
	libreoffice-calc libreoffice-writer \
	blender inkscape \
	ripgrep \
	autoconf automake pkg-config \
	tmux	
