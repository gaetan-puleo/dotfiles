stow = cd config && stow -v -t ~

# Get all config directories excluding OS-specific vscode
BASE_DIRS := $(filter-out vscode-linux vscode-mac,$(notdir $(wildcard config/*)))

.PHONY: dotfiles dotfiles-linux dotfiles-mac install

dotfiles-linux:
	$(stow) $(BASE_DIRS) vscode-linux

dotfiles-mac:
	$(stow) $(BASE_DIRS) vscode-mac

# Alias for backward compatibility
dotfiles: dotfiles-linux

install:
	brew install wget neovim tmux fish fnm jq fisher anomalyco/tap/opencode