# Remove fish default greeting
set fish_greeting                                 # Supresses fish's intro message

### "nvim" as manpager
set -x MANPAGER "nvim -c 'set ft=man' -"

# sources
source ~/.config/fish/aliases.fish
source ~/.config/fish/tokyonight.fish