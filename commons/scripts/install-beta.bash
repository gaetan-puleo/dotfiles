#!/bin/bash

# get docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# get distrobox
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
