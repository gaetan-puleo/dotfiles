CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

sudo apt-get update && sudo apt-get install -y fish

chsh -s $(which fish) $(whoami)

