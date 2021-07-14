#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# Install neovim 0.5.0
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-fast update
sudo apt-fast install -y neovim

nvim --headless +PackerInstall +qa
# create a symlink
bash "${CURR_PATH}/symlink.bash"
