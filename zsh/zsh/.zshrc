# if [ -z "$TMUX" ]; then
#     attach_session=$(tmux 2> /dev/null ls -F \
#         '#{session_attached} #{?#{==:#{session_last_attached},},1,#{session_last_attached}} #{session_id}' |
#         awk '/^0/ { if ($2 > t) { t = $2; s = $3 } }; END { if (s) printf "%s", s }')

#     if [ -n "$attach_session" ]; then
#         tmux attach -t "$attach_session"
#     else
#         tmux
#     fi
# fi

export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim
export REACT_EDITOR=/usr/bin/nvim

# zmodload zsh/zprof
source $HOME/.config/zsh/prompt.zsh
source $HOME/.config/zsh/path.zsh
source $HOME/.config/zsh/zshconfig.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/variables.zsh
source $HOME/.config/zsh/last_dir.zsh
source $HOME/zsh-lazyload/zsh-lazyload.zsh
lazyload fnm node yarn npm -- 'source $HOME/.config/zsh/fnm.zsh'
source $HOME/.config/zsh/zgen.zsh
# zprof
