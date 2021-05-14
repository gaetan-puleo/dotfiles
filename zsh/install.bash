#/bin/bash

sudo apt-get update && sudo apt-get install -y zsh

chsh -s $(which zsh)
# create a symlink
source "$(dirname "$0")/symlink.bash"
