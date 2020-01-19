source "${HOME}/.zgen/zgen.zsh"

# static load
# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen load mdumitru/last-working-dir
  zgen load olivierverdier/zsh-git-prompt
  zgen load zsh-users/zsh-autosuggestions
  zgen load command-not-found
  zgen load zdharma/fast-syntax-highlighting
  zgen load buonomo/yarn-completion

  # generate the init script from plugins above
  zgen save
fi


