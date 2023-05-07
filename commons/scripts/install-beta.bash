#!/bin/bash
#requirement curl uidmap

# get docker
echo 'install docker'
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

dockerd-rootless-setuptool.sh install

# check if installed
docker run hello-world

# Install rootless podman
# curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/extras/install-podman | sh -s -- --prefix ~/.local

# get distrobox
echo 'install distrobox'

curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh -s -- --next -v


distrobox create arch --image archlinux --yes -v
