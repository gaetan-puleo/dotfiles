alias nuke 'rm -rf'
alias md 'mkdir -p'
alias vim 'nvim'
alias vi 'nvim'
alias oc 'opencode'

test -e ~/.fzf.fish; and . ~/.fzf.fish

# Source API keys from secure location
test -e ~/.secrets/api-keys.fish; and source ~/.secrets/api-keys.fish


if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# opencode
fish_add_path /home/gaetanpuleo/.opencode/bin
fish_add_path /home/gaetanpuleo/.local/bin
