#!/bin/bash

sudo apt install -y build-essential cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
git clone https://github.com/jaagr/polybar.git ~/dotfiles/tmp

cd ~/dotfiles/tmp/polybar && ./build.sh
