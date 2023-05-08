#!/bin/bash

# requirements

sudo pacman --noconfirm -Syyu gnome-shell

sudo pacman --noconfirm -Syyu --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay

makepkg -si --noconfirm

yay --version

# video, graphic, 3d
sudo apt install -y blender gimp krita inkscape darktable flowblade
distrobox-export --app blender
distrobox-export --app krita
distrobox-export --app gimp
distrobox-export --app kdenlive
distrobox-export --app inkscape
distrobox-export --app darktable
distrobox-export --app flowtable

# other
sudo pacman --noconfirm -Syu discord
distrobox-export --app discord


# browsers
yay --noconfirm -Syyu google-chrome brave-bin microsoft-edge-stable-bin
distrobox-export --app google-chrome
distrobox-export --app brave
distrobox-export --app microsoft-edge


# terminal dev
# sudo pacman --noconfirm -Syu tmux neovim

# terminal tools
sudo pacman --noconfirm -Syu neofetch

# distrobox-export --app kitty

# terminal lolz
sudo pacman --noconfirm -Syu figlet lolcat

# end
figlet Welcome back | lolcat