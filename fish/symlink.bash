#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

mkdir -p ~/.config
ln -sfv "${CURR_PATH}/fish" ~/.config/

