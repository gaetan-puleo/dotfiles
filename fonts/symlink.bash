#/bin/bash

# link directory and print it
mkdir -p ~/.local/share/fonts 2> /dev/null

ln -sv ~/dotfiles/fonts/fonts/FiraCode ~/.local/share/fonts
ln -sv ~/dotfiles/fonts/fonts/VictorMono ~/.local/share/fonts
