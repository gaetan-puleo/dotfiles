stow = cd config && stow -v -t ~

CONFIG_DIRS := $(notdir $(wildcard config/*))

.PHONY: dotfiles dotfiles-dry

dotfiles:
	$(stow) $(CONFIG_DIRS)

install:
	brew install wget neovim tmux fish fnm jq fisher
