#/bin/bash

# link directory and print it
mkdir -p ~/.local/share/fonts 2> /dev/null

ln -sfv "${DOTPATH}/fonts/fonts/FiraCode" ~/.local/share/fonts
ln -sfv "${DOTPATH}/fonts/fonts/VictorMono" ~/.local/share/fonts
