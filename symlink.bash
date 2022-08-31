#!/bin/bash

case $1 in
  all)
    echo -n "Create symlinks for all directories"
    stow --verbose --target=$HOME --restow picom autostart autorandr polybar tmux rofi nix nvim wallpaper xmodmap
    ;;

  minimal)
    echo -n "Create symlinks for minimal setup"
    stow --verbose --target=$HOME --restow nvim tmux fish bash nix git kitty
    ;;

  delete)
    echo -n "Delete symlinks"
    stow --verbose --target=$HOME --delete */
    ;;
  
  *)
    echo -n "Unknown option"
    ;;
esac
