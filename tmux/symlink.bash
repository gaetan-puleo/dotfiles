#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

ln -sfv "${CURR_PATH}/.tmux.conf" ~/.tmux.conf
ln -sfv "${CURR_PATH}/.tmate.conf" ~/.tmate.conf
ln -sfv "${CURR_PATH}/.tmux" ~/
