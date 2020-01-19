#!/bin/bash

cd ~/dotfiles
set -x
source ./minimal-install.sh
source ./scripts/extra/programs/docker.sh
source ./scripts/extra/programs/docker-compose.sh
source ./scripts/extra/programs/mongodb.sh

set +x
