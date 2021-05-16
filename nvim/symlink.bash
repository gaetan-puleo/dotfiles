#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

ln -sfv "${CURR_PATH}/nvim" ~/.config/
