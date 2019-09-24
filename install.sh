#!/bin/bash
dotfiles="dotfiles"

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y zsh feh i3-wm i3lock curl git dunst lxterminal xfce4-power-manager lxappearance compton rofi dunst wget chromium-browser blueman ack-grep

#polybar
sudo apt install -y build-essential cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
git clone https://github.com/jaagr/polybar.git

cd polybar && ./build.sh
cd ../
rm -r polybar

#antigen 
curl -L git.io/antigen > antigen.zsh

#neovim

sudo apt-get install -y python-dev python-pip python3-dev python3-pip
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update -y
sudo apt-get install -y neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +'PlugInstall --sync' +qa

#ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
sudo dpkg -i ripgrep_11.0.2_amd64.deb

# git 
git config --global alias.alias config --get-regexp "alias.*"
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.cm "commit -m"
git config --global alias.lb "branch -a"
git config --global alias.l "log -20 --pretty=format:'%C(magenta)%h%Creset - %<(24)%C(cyan)%an%Creset %C(dim red)%ar%Creset : %s' --no-merges"
git config --global alias.ac '!git add . && git commit -am' 
git config --global alias.state '!git fetch --prune ; git fetch --tags ; clear && git branch -vv && git status'

chsh -s /bin/bash

# symlinks

ln -s ~/$dotfiles/.fonts ~/.fonts
ln -s ~/$dotfiles/.zshrc ~/.zshrc
ln -s ~/$dotfiles/.config/compton.conf ~/.config/compton.conf
ln -s ~/$dotfiles/.config/dunst ~/.config/dunst
ln -s ~/$dotfiles/.config/i3 ~/.config/i3
ln -s ~/$dotfiles/.config/rofi ~/.config/rofi
ln -s ~/$dotfiles/.config/polybar ~/.config/polybar
ln -s ~/$dotfiles/.config/nvim ~/.config/nvim
ln -s ~/$dotfiles/.config/lxterminal ~/.config/lxterminal
