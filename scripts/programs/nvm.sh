#!/bin/bash

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

# install latest lts
nvm install --lts
