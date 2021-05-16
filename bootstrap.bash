#/bin/bash
export DOTPATH="$(dirname $(realpath $0))"

source "${DOTPATH}/git/install.bash"
source "${DOTPATH}/kitty/install.bash"
source "${DOTPATH}/fonts/install.bash"
source "${DOTPATH}/nvim/install.bash"
source "${DOTPATH}/zsh/install.bash"
