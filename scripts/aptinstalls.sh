#!/bin/bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt -y install $1
  else
    echo "Already installed: ${1}"
  fi
}

# core
install git
install curl
install zsh
install feh
install i3-wm
install i3lock
install dunst
install lxterminal
install xfce4-power-manager
install lxappearance
install compton
install rofi
install dunst
install wget
install chromium-browser
install blueman
install xsel
install imagemagick
install tmux
install vifm

# fun
install figlet
install lolcat
