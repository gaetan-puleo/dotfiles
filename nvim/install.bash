#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# Install neovim 0.5.0
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update
sudo apt-get install -y neovim
		
# nvim --headless +PackerInstall +qa
# create a symlink
bash "${CURR_PATH}/symlink.bash"
