export TERM="xterm-256color"

ZSH_LOCAL=$HOME/.zsh_local

if [ -f "$ZSH_LOCAL" ]; then
    source $ZSH_LOCAL
fi

# navigate without cd
setopt auto_cd
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=500
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt SHARE_HISTORY
setopt correct_all # autocorrect commands
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion
zstyle ':completion:*:manuals'    separate-sections true
zstyle ':completion:*:manuals.*'  insert-sections   true
zstyle ':completion:*:man:*'      menu yes select
bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char


