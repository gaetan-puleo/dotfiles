#!/bin/bash
#requirement curl and uidmap

# get docker
# curl -fsSL https://get.docker.com -o get-docker.sh
# sh get-docker.sh

# dockerd-rootless-setuptool.sh install

# check if installed
# docker run hello-world

# get distrobox
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh

distrobox create arch --image archlinux --yes -v
