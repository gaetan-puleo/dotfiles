#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# link directory and print it
mkdir -p ~/.local/share/themes 2> /dev/null

ln -sfv "${CURR_PATH}/juno/Juno-mirage" ~/.local/share/themes
ln -sfv "${CURR_PATH}/tokyonight_dark" ~/.local/share/themes
