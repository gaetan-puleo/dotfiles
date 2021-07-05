#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

bash "${CURR_PATH}/ubuntu/install.bash"
bash "${CURR_PATH}/git/install.bash"
bash "${CURR_PATH}/kitty/install.bash"
bash "${CURR_PATH}/fonts/install.bash"
bash "${CURR_PATH}/nvim/install.bash"
bash "${CURR_PATH}/fzf/install.bash"
# bash "${CURR_PATH}/zsh/install.bash"
bash "${CURR_PATH}/fish/install.bash"
bash "${CURR_PATH}/node/install.bash"
bash "${CURR_PATH}/tmux/install.bash"


bash "${CURR_PATH}/checkhealth.bash"
