#!/bin/bash

# get docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

systemctl --user start docker

systemctl --user enable docker
sudo loginctl enable-linger $(whoami)

# get distrobox
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
