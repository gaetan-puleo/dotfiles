#
# ~/.bashrc
#

# If not running interactively, don't do anything
# source nix

[[ $- != *i* ]] && return

alias ls='ls --color=auto'

. ~/.nix-profile/etc/profile.d/nix.sh
TERM=screen-256color-bce

export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

# exec fish;

PS1='[\u@\h \W]\$ '
