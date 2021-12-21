CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

sudo apt-get install -y tmux
# create a symlink
bash "${CURR_PATH}/symlink.bash"

