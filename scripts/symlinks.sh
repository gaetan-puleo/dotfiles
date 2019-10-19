#!/bin/bash

dotfiles="dotfiles"

function linkDotfile {

  if [ ! -L ${2} ]; then
    if [ -f "${2}" ]; then
      # Existing file
      echo "Backing up existing file: ${2}"
      mv ${2}{,.${dateStr}}

    elif [ -d "${2}" ]; then
      # Existing dir
      echo "Backing up existing dir: ${2}"
      mv ${2}{,.${dateStr}}
    fi
  fi

  if [ ! -e ${2} ]; then
    echo "Generate symlink for ${2}}"
    ln -sfn ${1} ${2}
  fi
  
}

linkDotfile ~/$dotfiles/fonts ~/.fonts
linkDotfile ~/$dotfiles/config/zsh/zshrc ~/.zshrc
linkDotfile ~/$dotfiles/config/compton.conf ~/.config/compton.conf
linkDotfile ~/$dotfiles/config/dunst ~/.config/dunst
linkDotfile ~/$dotfiles/config/i3 ~/.config/i3
linkDotfile ~/$dotfiles/config/tmux/tmux.conf ~/.tmux.conf
linkDotfile ~/$dotfiles/config/rofi ~/.config/rofi
linkDotfile ~/$dotfiles/config/vifm ~/.config/vifm
linkDotfile ~/$dotfiles/config/polybar ~/.config/polybar
linkDotfile ~/$dotfiles/config/nvim ~/.config/nvim
linkDotfile ~/$dotfiles/config/lxterminal ~/.config/lxterminal
linkDotfile ~/$dotfiles/config/kitty ~/.config/kitty
linkDotfile ~/$dotfiles/images/wallpaper.jpg ~/wallpaper.jpg
linkDotfile ~/$dotfiles/images/wallpaper-lock.png ~/wallpaper-lock.png
