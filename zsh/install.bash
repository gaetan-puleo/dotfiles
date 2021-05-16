#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

sudo apt-get update && sudo apt-get install -y zsh

chsh -s $(which zsh)

# Install zgen (zsh plugin manager)
git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen

# create a symlink
bash "${CURR_PATH}/symlink.bash"
