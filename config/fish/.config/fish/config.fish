# Config 

set -g fish_greeting ""

# Alias
alias nuke 'rm -rf'
alias md 'mkdir -p'
alias vim 'nvim'
alias vi 'nvim'
alias oc 'opencode'
alias nvm 'fnm'

# Source API keys from secure location
test -e ~/.secrets/api-keys.fish; and source ~/.secrets/api-keys.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

