export TERM="xterm-256color"
# PATH
PATH=$PATH:~/.fzf/bin
export PATH

ZSH_LOCAL=$HOME/.zsh_local

if [ -f "$ZSH_LOCAL" ]; then
    source $ZSH_LOCAL
fi


# ANTIGEN START

source $HOME/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle lukechilds/zsh-nvm
antigen apply

# ANTIGEN END

alias g="git"
alias vim="nvim"
alias i3c="nvim ~/.config/i3/config"
alias zshc="nvim ~/.zshrc"
alias vimc="nvim ~/.config/nvim/init.vim"
alias polybarc="nvim ~/.config/polybar/config"
alias comptonc="nvim ~/.config/compton.conf"
alias pstart="sleep 1500 && notify-send -t 0 'take a break'"
alias ppause="sleep 300 && notify-send -t 0 'go to work'"
alias hs='history | grep'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias showip='ifconfig | grep inet'

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
'
