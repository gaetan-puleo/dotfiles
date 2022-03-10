#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

tput setaf 7; tput bold
echo "Install Neovim"
tput sgr0


# Install neovim 0.6.0
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update
sudo apt-get install -y neovim
		
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# nvim --headless +PackerInstall +qa
# create a symlink
bash "${CURR_PATH}/symlink.bash"
