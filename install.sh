#!/bin/bash

# chsh -s /bin/bash

cd ./scripts
echo What is your password?

# read -s password
# export password

bash ./before-install.sh
bash ./aptinstalls.sh
bash ./programs.sh
bash ./symlinks.sh
bash ./config.sh
bash ./clean-after-install.sh

# Get all upgrades
sudo apt upgrade -y

chsh -s $(which zsh)
# See our bash changes
source ~/.bashrc
figlet "... ready to work" | lolcat
