#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

bash "${CURR_PATH}/git/install.bash"
bash "${CURR_PATH}/kitty/install.bash"
bash "${CURR_PATH}/fonts/install.bash"
bash "${CURR_PATH}/nvim/install.bash"
bash "${CURR_PATH}/zsh/install.bash"
