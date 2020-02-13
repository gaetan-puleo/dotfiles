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
    echo "Generate symlink for ${2}"
    ln -sfn ${1} ${2}
  fi
  
}

if [ ! -d "~/.config" ]; then
  mkdir -p ~/.config
fi
linkDotfile ~/$dotfiles/fonts ~/.fonts
linkDotfile ~/$dotfiles/icons ~/.icons
linkDotfile ~/$dotfiles/themes ~/.themes
linkDotfile ~/$dotfiles/config/zsh/zshrc ~/.zshrc
linkDotfile ~/$dotfiles/config/conky/conkyrc ~/.conkyrc
linkDotfile ~/$dotfiles/config/compton.conf ~/.config/compton.conf
linkDotfile ~/$dotfiles/config/mimeapps.list ~/.config/mimeapps.list
linkDotfile ~/$dotfiles/config/dunst ~/.config/dunst
linkDotfile ~/$dotfiles/config/i3 ~/.config/i3
linkDotfile ~/$dotfiles/config/tmux/tmux.conf ~/.tmux.conf
linkDotfile ~/$dotfiles/config/rofi ~/.config/rofi
linkDotfile ~/$dotfiles/config/nvim ~/.config/nvim
linkDotfile ~/$dotfiles/config/kitty ~/.config/kitty
linkDotfile ~/$dotfiles/config/ranger ~/.config/ranger
linkDotfile ~/$dotfiles/config/tint2 ~/.config/tint2
linkDotfile ~/$dotfiles/config/start ~/.config/start
linkDotfile ~/$dotfiles/config/sxhkd ~/.config/sxhkd
linkDotfile ~/$dotfiles/images/wallpaper.jpg ~/wallpaper.jpg
linkDotfile ~/$dotfiles/images/wallpaper-lock.png ~/wallpaper-lock.png
