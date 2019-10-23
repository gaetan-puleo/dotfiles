#!/bin/bash
# chsh -s /bin/bash

cd ~/dotfiles

set -x
source ./scripts/minimal/before-install.sh
source ./scripts/minimal/apt.sh

# programs
source ./scripts/minimal/programs/fnm.sh
source ./scripts/minimal/programs/kitty.sh
source ./scripts/minimal/programs/nvim.sh
source ./scripts/minimal/programs/plug.sh
source ./scripts/minimal/programs/ripgrep.sh
source ./scripts/minimal/programs/zgen.sh
source ./scripts/minimal/done.sh
set +x
