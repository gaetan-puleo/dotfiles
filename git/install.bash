#/bin/bash
CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# create a symlink
bash "${CURR_PATH}/symlink.bash"
