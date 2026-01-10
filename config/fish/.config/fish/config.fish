# Config 

set -g fish_greeting ""

# Alias
alias nuke 'rm -rf'
alias md 'mkdir -p'
alias vim 'nvim'
alias vi 'nvim'
alias oc 'opencode'
alias nvm 'fnm'

if test -d /home/linuxbrew/.linuxbrew/bin
    fish_add_path /home/linuxbrew/.linuxbrew/bin
else if test -d /opt/homebrew/bin
    fish_add_path /opt/homebrew/bin
else if test -d /usr/local/bin
    fish_add_path /usr/local/bin
end

# Source API keys from secure location
test -e ~/.secrets/api-keys.fish; and source ~/.secrets/api-keys.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

