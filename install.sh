#!/bin/bash
dotfiles=".dotfiles"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install feh i3-wm i3lock curl git dunst lxterminal xfce4-power-manager lxappearence compton rofi dunst wget chromium-browser blueman

#polybar
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2

git clone https://github.com/jaagr/polybar.git

cd polybar && ./build.sh
cd ../
rm -r polybar

#neovim

sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +'PlugInstall --sync' +qa

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# requirements
cp -s ~/$dotfiles/.gitconfig.dist ~/.dotfiles/.gitconfig

# symlinks
# ln -s ~/$dotfiles/.icons ~/.icons
ln -s ~/$dotfiles/.config/compton.conf ~/.config/compton.conf
ln -s ~/$dotfiles/.gitconfig ~/.gitconfig
ln -s ~/$dotfiles/.config/dunst ~/.config/dunst
ln -s ~/$dotfiles/.config/i3 ~/.config/i3
ln -s ~/$dotfiles/.config/rofi ~/.config/rofi
ln -s ~/$dotfiles/.config/polybar ~/.config/polybar
ln -s ~/$dotfiles/.config/nvim ~/.config/nvim
ln -s ~/$dotfiles/.config/lxterminal ~/.config/lxterminal
