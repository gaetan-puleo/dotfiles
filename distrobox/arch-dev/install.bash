#!/bin/bash

# requirements
sudo pacman --noconfirm -Syyu --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

yay --version

# dev
sudo pacman --noconfirm -Syyu code
distrobox-export --app code

# terminal dev
sudo pacman --noconfirm -Syyu tmux neovim

## TERMINAL TOOLS ##

#  neofetch - os information
#  fzf - fuzzy finder
#  jq - Json prepocessor
#  gcc - GNU compiler
#  libstdc++ - C++ library for gcc
#  gnumake - execute makefile
#  bottom - process manager
#  wget - File downloader
#  ripgrep - a better and faster grep
#  fish - a shell with fancy options
sudo pacman --noconfirm -Syyu \
  neofetch \
  fzf \
  fish  \
  jq \
  wget \
  ripgrep \
  bottom \
  gcc \
  gnumake \
  libstdcxx5


# terminal lolz
sudo pacman --noconfirm -Syyu figlet lolcat

# end
figlet Dev Box is ready | lolcat
