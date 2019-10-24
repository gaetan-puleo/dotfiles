#!/bin/bash

# install nvm
curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash --skip-shell
# install latest lts
fnm install 12
