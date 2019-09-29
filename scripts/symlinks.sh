#!/bin/bash

dotfiles="dotfiles"

ln -s ~/$dotfiles/fonts ~/.fonts
ln -s ~/$dotfiles/config/zsh/.zshrc ~/.zshrc
ln -s ~/$dotfiles/config/compton.conf ~/.config/compton.conf
ln -s ~/$dotfiles/config/dunst ~/.config/dunst
ln -s ~/$dotfiles/config/i3 ~/.config/i3
ln -s ~/$dotfiles/config/rofi ~/.config/rofi
ln -s ~/$dotfiles/config/polybar ~/.config/polybar
ln -s ~/$dotfiles/config/nvim ~/.config/nvim
ln -s ~/$dotfiles/config/lxterminal ~/.config/lxterminal
