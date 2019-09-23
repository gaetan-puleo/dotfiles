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
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
antigen bundle command-not-found
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure


#antigen theme bhilburn/powerlevel9k powerlevel9k

#antigen theme denysdovhan/spaceship-prompt

antigen apply

# ANTIGEN END

-hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)


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


# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# -
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
