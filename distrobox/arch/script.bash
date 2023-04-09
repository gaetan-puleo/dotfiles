#!/bin/bash

# requirements
sudo pacman --noconfirm -Syu gnome-shell 

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

# end
figlet Welcome back | lolcat
