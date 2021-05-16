source "${HOME}/.zgen/zgen.zsh"
# static load
# if the init script doesn't exist
if ! zgen saved; then

	# specify plugins here
	zgen load mdumitru/last-working-dir
	zgen load djui/alias-tips
	zgen load zsh-users/zsh-autosuggestions
	# zgen oh-my-zsh plugins/command-not-found
	zgen load zdharma/fast-syntax-highlighting
	zgen load buonomo/yarn-completion
	# generate the init script from plugins above
	zgen save
fi

