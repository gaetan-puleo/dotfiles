# TO DO

## Install

```bash
sudo apt install -y git stow 

# go to the home folder in the dotfiles
cd $HOME/dotfiles/home

# create all symlinks in $HOME
stow -t $HOME *

cd $HOME/dotfiles/externals
stow -t $HOME *
```
