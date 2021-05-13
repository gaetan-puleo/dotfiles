#/bin/bash

echo "SYMLINK DEBUG"
# remove default folder kitty
rm -rf ~/.config/kitty

# link directory and print it
ln -sv ~/dotfiles/kitty/kitty ~/.config/
