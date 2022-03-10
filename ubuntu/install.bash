#!/bin/bash
sudo -v 

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
sudo add-apt-repository ppa:apt-fast/stable -y
sudo apt-get update -y
sudo -E apt-get -y install apt-fast

echo debconf apt-fast/maxdownloads string 16 | debconf-set-selections
echo debconf apt-fast/dlflag boolean true | debconf-set-selections
echo debconf apt-fast/aptmanager string apt-get | debconf-set-selections
echo "Install packages ----------------------"

sudo apt-fast install -y gcc g++ \
	tar \
	curl \
	jq \
	httpie \
	ripgrep \
	tmux \
	kitty \
	fish \
	autoconf automake pkg-config \
	git \
  ca-certificates \
  curl \
  gnupg \
  lsb-release \
	libreoffice \
	libreoffice-gtk \
	peek \
	gpick \
	gimp \
	gimp-plugin-registry \
	figlet \
	lolcat

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

sudo usermod -aG docker $USER

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
