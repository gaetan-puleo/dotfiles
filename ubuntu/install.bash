#!/bin/bash
export DEBIAN_FRONTEND=noninteractive # force non interactive
export DOWNLOADBEFORE=true # suppress apt fast dialog
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

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
# neovim
sudo add-apt-repository ppa:neovim-ppa/unstable -y

echo "Install packages ----------------------"


sudo apt-fast update -yq
sudo apt-fast upgrade -yq
sudo apt-fast install -yq gcc \
	tar \
	curl \
	jq \
	httpie \
	libreoffice-writer \
	ripgrep \
	autoconf automake pkg-config \
	tmux \
	kitty \
	fish \
	neovim \
	git
