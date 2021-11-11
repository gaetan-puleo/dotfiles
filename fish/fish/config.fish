# Remove fish default greeting
set fish_greeting # Supresses fish's intro message

### "nvim" as manpager
set -x MANPAGER "nvim -c 'set ft=man' -"

# sources
source ~/.config/fish/aliases.fish
source ~/.config/fish/tokyonight.fish
source ~/.config/fish/deno.fish

# local config if present
if test -e ~/.config/fish/config.local.fish
    source ~/.config/fish/config.local.fish
end

# if not set -q TMUX
#     set -g TMUX tmux new-session -d -s 0
#     eval $TMUX
#     tmux attach-session -d -t 0
# end
