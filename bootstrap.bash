#/bin/bash

source "$(dirname $(realpath ${BASH_SOURCE[0]}))/ubuntu/install.bash" 
source "$(dirname $(realpath ${BASH_SOURCE[0]}))/git/install.bash"
source "$(dirname $(realpath ${BASH_SOURCE[0]}))/kitty/install.bash"
source "$(dirname $(realpath ${BASH_SOURCE[0]}))/fonts/install.bash"
source "$(dirname $(realpath ${BASH_SOURCE[0]}))/themes/install.bash"
source "$(dirname $(realpath ${BASH_SOURCE[0]}))/nvim/install.bash"
source "$(dirname $(realpath ${BASH_SOURCE[0]}))/fish/install.bash"
# source "$(dirname $(realpath ${BASH_SOURCE[0]}))/node/install.bash" 
# source "$(dirname $(realpath ${BASH_SOURCE[0]}))/lsp/install.bash" 
source "$(dirname $(realpath ${BASH_SOURCE[0]}))/tmux/install.bash"

