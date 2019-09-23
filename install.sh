#!/bin/bash

# requirements
cp -s ~/.dotfiles/.gitconfig.dist ~/.dotfiles/.gitconfig

# symlinks
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.config/compton.conf ~/.config/compton.conf
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
