#!/bin/bash
#requirement curl

# get docker
echo 'install docker'
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh


echo 'Add docker group'
sudo groupadd docker 2> /dev/null
sudo usermod -aG docker $USER 2> /dev/null

echo 'run start service'
sudo systemctl enable docker.service 2> /dev/null
sudo systemctl enable containerd.service 2> /dev/null

echo 'install distrobox'

curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install > get_distrobox.sh

sh ./get_distrobox.sh


echo 'clean files'
# clean
rm ./get-docker.sh
rm ./get_distrobox.sh

echo 'end files'

echo 'run hello world'
newgrp docker << END

docker run hello-world

PATH=~/.local/bin:$PATH

distrobox-create arch --image archlinux
distrobox-enter arch

END
