#!/bin/bash

cd /tmp
git clone https://github.com/moustacheful/myrmidon.git
sudo cp ./myrmidon/myrmidon.sh /usr/bin/
sudo cp ./myrmidon/confirm.sh /usr/bin/

sudo chmod +x /usr/bin/myrmidon.sh
sudo chmod +x /usr/bin/confirm.sh
