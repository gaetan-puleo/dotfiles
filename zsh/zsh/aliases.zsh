alias g="git"
alias nvm="echo 'nvm is an alias for fnm' && fnm"
alias vim="nvim"
# alias pstart="sleep 1500 && notify-send -t 0 'take a break'"
# alias ppause="sleep 300 && notify-send -t 0 'go to work'"
# alias hs='history | grep'
# alias install='sudo apt install'
# alias update='sudo apt update && sudo apt upgrade'
# alias showip='ifconfig | grep inet'
alias dot="cd $HOME/dotfiles"
alias md='mkdir -p'
alias nuke='rm -rf'


# productivity aliases
alias dot="cd $HOME/dotfiles"

fzfvim() {
  vim $(fzf -m --query=$1)
}

alias fvim=fzfvim

# alias tpm-install="~/.tmux/plugins/tpm/scripts/install_plugins.sh"
# alias tpm-update="~/.tmux/plugins/tpm/scripts/update_plugin.sh"
# alias d='docker'
# alias gmicro='git clone https://github.com/gaetan-puleo/express-microservice-boilerplate.git'
