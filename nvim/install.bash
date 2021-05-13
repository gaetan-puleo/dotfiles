#/bin/bash

# Install neovim 0.5.0
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# create a symlink
source "$(dirname "$0")/symlink.bash"
