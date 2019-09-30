#!/bin/bash

# chsh -s /bin/bash

cd ./scripts

bash ./before-install.sh
bash ./aptinstalls.sh
bash ./programs.sh
bash ./symlinks.sh
bash ./clean-after-install.sh


# Get all upgrades
sudo apt upgrade -y

chsh -s $(which zsh)
# See our bash changes
source ~/.bashrc
figlet "... ready to work" | lolcat
