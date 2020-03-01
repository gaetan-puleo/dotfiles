#!/bin/bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Create a symbolic link to add kitty to PATH (assuming $HOME/.local/bin is in
# your PATH)
ln -s $HOME/.local/kitty.app/bin/kitty $HOME/.local/bin/
# Place the kitty.desktop file somewhere it can be found by the OS
cp $HOME/.local/kitty.app/share/applications/kitty.desktop $HOME/.local/share/applications/kitty.desktop
# Update the path to the kitty icon in the kitty.desktop file
sed -i "s/Icon\=kitty/Icon\=\/home\/$USER\/.local\/kitty.app\/share\/icons\/hicolor\/256x256\/apps\/kitty.png/g" $HOME/.local/share/applications/kitty.desktop
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $HOME/.local/bin/kitty 50

sudo update-alternatives --config x-terminal-emulator

