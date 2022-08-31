#/bin/bash

# set kitty as default term
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which kitty) 50
sudo update-alternatives --set x-terminal-emulator $(which kitty)

