#!/bin/bash

curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb > ~/dotfiles/tmp/ripgrep.deb
sudo dpkg -i  ~/dotfiles/tmp/ripgrep.deb

