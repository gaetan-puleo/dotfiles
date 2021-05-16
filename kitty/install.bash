#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# Install kitty
sudo apt-get update
sudo apt-get install -y kitty

# create a symlink
bash "${CURR_PATH}/symlink.bash"
