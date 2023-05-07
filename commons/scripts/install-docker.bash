#!/bin/bash
#requirement curl

# get docker
echo 'install docker'
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

sudo groupadd docker > /dev/null
sudo usermod -aG docker $USER > /dev/null

newgrp docker

docker run hello-world

sudo systemctl enable docker.service > /dev/null
sudo systemctl enable containerd.service > /dev/null

echo 'install distrobox'

curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install > get_distrobox.sh

sh ./get_distrobox.sh

# clean
rm ./get-docker.sh
rm ./get_distrobox.sh
