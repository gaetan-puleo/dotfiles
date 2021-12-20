#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# Install kitty
sudo apt-get update
 sudo apt-get install -y kitty

# set kitty as default term
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which kitty) 50
sudo update-alternatives --set x-terminal-emulator $(which kitty)

# create a symlink
bash "${CURR_PATH}/symlink.bash"
