#!/bin/bash

dotfiles="dotfiles"

function linkDotfile {
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
