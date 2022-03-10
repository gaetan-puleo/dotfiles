CURR_PATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

# create a symlink
bash "${CURR_PATH}/symlink.bash"

if [ -z ${GITHUB_ACTIONS+x} ];
then
	# fish
	sudo chsh $USER -s $(which fish)
fi

# Install fisherghcr.io/catthehacker/ubuntu:act-20.04
ls ~/.config/
fish -c "cd; curl -sL https://git.io/fisher | source && fisher update"
