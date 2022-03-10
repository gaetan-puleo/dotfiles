CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

source "${CURR_PATH}/checkhealth/docker.bash" 
source "${CURR_PATH}/checkhealth/fish.bash" 
source "${CURR_PATH}/checkhealth/fonts.bash" 
source "${CURR_PATH}/checkhealth/git.bash" 
source "${CURR_PATH}/checkhealth/kitty.bash" 
# source "${CURR_PATH}/checkhealth/lsp.bash" 
# source "${CURR_PATH}/checkhealth/node.bash" 
source "${CURR_PATH}/checkhealth/nvim.bash" 
source "${CURR_PATH}/checkhealth/tmux.bash" 
source "${CURR_PATH}/checkhealth/ubuntu.bash" 
