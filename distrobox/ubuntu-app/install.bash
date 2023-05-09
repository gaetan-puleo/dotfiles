#!/bin/bash

# requirements

sudo apt update -y
sudo apt upgrade -y


sudo apt install curl wget gnumake -y

# video, graphic, 3d
sudo apt install -y blender gimp krita inkscape darktable flowblade
distrobox-export --app blender
distrobox-export --app krita
distrobox-export --app gimp
distrobox-export --app kdenlive
distrobox-export --app inkscape
distrobox-export --app darktable
distrobox-export --app flowblade

# other
sudo -E gpg --no-default-keyring --keyring=/usr/share/keyrings/javinator9889-ppa-keyring.gpg --keyserver keyserver.ubuntu.com --recv-keys 08633B4AAAEB49FC

sudo tee /etc/apt/sources.list.d/javinator9889-ppa.list <<< "deb [arch=amd64 signed-by=/usr/share/keyrings/javinator9889-ppa-keyring.gpg] https://ppa.javinator9889.com all main"

sudo apt update && sudo apt install discord -y

distrobox-export --app discord


# browsers

# chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'


# brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list


# edge
sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/edge/ stable main" >> /etc/apt/sources.list.d/microsoft_edge.list'

sudo apt update -y

sudo apt install microsoft-edge-stable -y
sudo apt-get install google-chrome-stable -y
sudo apt install brave-browser -y

distrobox-export --app google-chrome
distrobox-export --app brave
distrobox-export --app microsoft-edge



# terminal dev
# sudo pacman --noconfirm -Syu tmux neovim

# terminal tools
sudo apt install -y neofetch

# distrobox-export --app kitty

# terminal lolz
sudo apt install -y figlet lolcat

# end
figlet Welcome back | lolcat
