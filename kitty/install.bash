#/bin/bash

# Install kitty
sudo apt-get update
sudo apt-get install -y kitty

# create a symlink
source "${DOTPATH}/kitty/symlink.bash"
