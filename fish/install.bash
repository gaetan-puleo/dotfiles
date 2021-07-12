CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

sudo apt-get update && sudo apt-get install -y fish
echo 
# chsh $USER -s $(which fish)

#launch fish
fish

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher update

