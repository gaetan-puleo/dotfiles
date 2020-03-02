#!/bin/bash

# install fnm
curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash -s -- --skip-shell

$HOME/.fnm/fnm -v
$HOME/.fnm/fnm install 13
$HOME/.fnm/fnm use 13

zsh -c 'npm install yarn -g'
zsh -c 'yarn -v'
