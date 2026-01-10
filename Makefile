stow = cd config && stow -v -t ~

CONFIG_DIRS := $(shell find config -mindepth 1 -maxdepth 1 -type d -printf '%f ')

.PHONY: dotfiles dotfiles-dry

dotfiles:
	$(stow) $(CONFIG_DIRS)

install:
	brew install wget neovim tmux fish
