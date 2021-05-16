#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# link directory and print it
ln -sfv "${CURR_PATH}/git" ~/.config/
