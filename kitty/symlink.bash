#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# remove default folder kitty
rm -rf ~/.config/kitty

# link directory and print it
ln -sfv "${CURR_PATH}/kitty" ~/.config/
