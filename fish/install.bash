CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# create a symlink
bash "${CURR_PATH}/symlink.bash"

# Install fish 
sudo apt-get update && sudo apt-get install -y fish
# chsh $USER -s $(which fish)


# Install fisher
ls ~/.config/
cd
fish -c "curl -sL https://git.io/fisher | source && fisher update"

bash "${CURR_PATH}/../node/install.bash"
