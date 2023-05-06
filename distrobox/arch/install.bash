#!/bin/bash

# requirements
sudo pacman --noconfirm -Syyu gnome-shell

sudo pacman --noconfirm -Syyu --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# dev
sudo pacman --noconfirm -Syu code
distrobox-export --app code


# video, graphic, 3d
sudo pacman --noconfirm -Syu blender gimp krita kdenlive inkscape scribus darktable
distrobox-export --app blender
distrobox-export --app krita
distrobox-export --app gimp
distrobox-export --app kdenlive
distrobox-export --app inkscape
distrobox-export --app scribus
distrobox-export --app darktable

# other
sudo pacman --noconfirm -Syu discord
distrobox-export --app discord

# office
sudo pacman --noconfirm -Syu libreoffice
distrobox-export --app libreoffice --verbose # libreoffice is slow to copy to the host

# browsers
yay --noconfirm -Syyu google-chrome brave-bin microsoft-edge-stable-bin
distrobox-export --app google-chrome
distrobox-export --app brave
distrobox-export --app microsoft-edge


# terminal dev
sudo pacman --noconfirm -Syu tmux neovim

# terminal tools
sudo pacman --noconfirm -Syu figlet neofetch fzf fish kitty

distrobox-export --app kitty



# terminal lolz
sudo pacman --noconfirm -Syu figlet lolcat

# end
figlet Welcome back | lolcat
