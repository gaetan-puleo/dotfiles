#!/bin/bash

cd /tmp
git clone https://github.com/micahco/spotify-now.git
sudo cp ./spotify-now/spotify-now /usr/bin/

sudo chmod +x /usr/bin/spotify-now
