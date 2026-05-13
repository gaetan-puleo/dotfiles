# ── History ──────────────────────────────────────────────
HISTFILE=~/.bash_history
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:ignorespace
shopt -s histappend

# ── Completion ──────────────────────────────────────────
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# ── Aliases ─────────────────────────────────────────────
alias ll='ls -lAh --color=auto'
alias la='ls -A --color=auto'
alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# ── Prompt (minimal) ───────────────────────────────────
__git_branch() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    [ -n "$branch" ] && printf ' \033[36m(%s)\033[0m' "$branch"
}

PS1='\[\033[34m\]\w\[\033[0m\]$(__git_branch) \[\033[37m\]❯\[\033[0m\] '
