#/bin/bash

# Install kitty
sudo apt-get update
sudo apt-get install git

# create a symlink
source "$(dirname "$0")/symlink.bash"
