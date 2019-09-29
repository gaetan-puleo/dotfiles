#!/bin/bash

dotfiles="dotfiles"

function linkDotfile {
  dest="${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -L ${2} ]; then
    # Existing symlink
    echo "Removing existing symlink: ${2}"
    rm ${dest}

  elif [ -f "${2}" ]; then
    # Existing file
    echo "Backing up existing file: ${2}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${2}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${2}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${2}"
  ln -sfn ${1} ${2}
}

linkDotfile ~/$dotfiles/fonts ~/.fonts
linkDotfile ~/$dotfiles/config/zsh/.zshrc ~/.zshrc
linkDotfile ~/$dotfiles/config/compton.conf ~/.config/compton.conf
linkDotfile ~/$dotfiles/config/dunst ~/.config/dunst
linkDotfile ~/$dotfiles/config/i3 ~/.config/i3
linkDotfile ~/$dotfiles/config/rofi ~/.config/rofi
linkDotfile ~/$dotfiles/config/polybar ~/.config/polybar
linkDotfile ~/$dotfiles/config/nvim ~/.config/nvim
linkDotfile ~/$dotfiles/config/lxterminal ~/.config/lxterminal
