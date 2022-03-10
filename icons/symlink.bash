#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# link directory and print it
mkdir -p ~/.local/share/icons 2> /dev/null

ln -sfv "${CURR_PATH}/tokyonight_dark" ~/.local/share/icons
