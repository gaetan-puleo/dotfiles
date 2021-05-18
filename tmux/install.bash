CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

cd 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
./configure && make

# create a symlink
bash "${CURR_PATH}/symlink.bash"

