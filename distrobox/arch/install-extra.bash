#!/bin/bash

# office
sudo pacman --noconfirm -Syu libreoffice
distrobox-export --app libreoffice # libreoffice is slow to copy to the host
