#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# link directory and print it
mkdir -p ~/.local/share/fonts 2> /dev/null

ln -sfv "${CURR_PATH}/fonts/FiraCode" ~/.local/share/fonts
ln -sfv "${CURR_PATH}/fonts/VictorMono" ~/.local/share/fonts
