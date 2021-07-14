#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

bash "${CURR_PATH}/ubuntu/install.bash"
bash "${CURR_PATH}/git/install.bash"
bash "${CURR_PATH}/kitty/install.bash"
bash "${CURR_PATH}/fonts/install.bash"
bash "${CURR_PATH}/themes/install.bash"
bash "${CURR_PATH}/nvim/install.bash"
bash "${CURR_PATH}/fish/install.bash"
# bash "${CURR_PATH}/node/install.bash" # Run in fish script
bash "${CURR_PATH}/tmux/install.bash"


bash "${CURR_PATH}/checkhealth.bash"

# fish
chsh $USER -s $(which fish)
