#/bin/bash

# Install neovim 0.5.0
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update
sudo apt-get install -y neovim

# create a symlink
source "${DOTPATH}/nvim/symlink.bash"
