#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# Install kitty
sudo apt-get update
sudo apt-get install -y git

# create a symlink
bash "${CURR_PATH}/symlink.bash"
