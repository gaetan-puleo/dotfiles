#!/bin/bash

case $1 in
  all)
    echo -n "Create symlinks for all directories"
    stow --verbose --target=$HOME --restow act gsimplecal picom autorandr i3 polybar themes icons tmux dunst kitty rofi fish neofetch fonts nix sxhkd  git nvim
    ;;

  minimal)
    echo -n "Create symlinks for minimal setup"
    stow --verbose --target=$HOME --restow nvim tmux fish
    ;;

  delete)
    echo -n "Delete symlinks"
    stow --verbose --target=$HOME --delete */
    ;;
  
  *)
    echo -n "Unknown option"
    ;;
esac