source "${HOME}/.zgenom/zgenom.zsh"
# static load
# if the init script doesn't exist
if ! zgenom saved; then

	# specify plugins here
	zgenom load mdumitru/last-working-dir
	zgenom load djui/alias-tips
	zgenom load zsh-users/zsh-autosuggestions
	# zgen oh-my-zsh plugins/command-not-found
	zgenom load zdharma/fast-syntax-highlighting
	zgenom load buonomo/yarn-completion
	# generate the init script from plugins above
	zgenom save
fi

