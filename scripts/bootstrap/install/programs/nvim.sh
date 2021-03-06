#!/bin/bash

sudo apt-get install -y python-dev python-pip python3-dev python3-pip
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update -y
sudo apt-get install -y neovim

pip3 install pynvim

zsh -c "nvim -u $HOME/dotfiles/nvim/.config/nvim/config/plugins.vim +PlugInstall +qall"
