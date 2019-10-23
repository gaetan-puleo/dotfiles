#!/bin/bash

# install nvm
curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash
# install latest lts
fnm install 12
