lazy_source () {
    eval "$1 () { [ -f $2 ] && source $2 && $1 \$@ }"
}

lazy_source zgen ${HOME}/.zgen/zgen.zsh
if ! source "$HOME/.zgen/init.zsh"; then
  # source "${HOME}/.zgen/zgen.zsh"

  # static load
  # if the init script doesn't exist
  if ! zgen saved; then

    # specify plugins here
    zgen load mdumitru/last-working-dir
    # zgen load olivierverdier/zsh-git-prompt
    zgen load zsh-users/zsh-autosuggestions
    zgen load command-not-found
    # zgen load zdharma/fast-syntax-highlighting
    # zgen load buonomo/yarn-completion
    # zgen load qoomon/zsh-lazyload
    zgen load zsh-users/zsh-syntax-highlighting

    # generate the init script from plugins above
    zgen save
  fi
fi

