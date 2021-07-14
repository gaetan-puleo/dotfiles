#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# Install kitty
# sudo apt-fast update
# sudo apt-fast install -y git

# create a symlink
bash "${CURR_PATH}/symlink.bash"
