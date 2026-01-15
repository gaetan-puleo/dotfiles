stow = cd config && stow -v -t ~

# Get all config directories excluding OS-specific vscode
BASE_DIRS := $(filter-out vscode-linux vscode-mac,$(notdir $(wildcard config/*)))

.PHONY: help dotfiles dotfiles-linux dotfiles-mac install vscode-extensions-linux vscode-extensions-mac

help:
	@echo "Available commands:"
	@echo "  make install                    - Install packages via Homebrew"
	@echo "  make dotfiles-linux            - Stow dotfiles for Linux"
	@echo "  make dotfiles-mac              - Stow dotfiles for macOS"
	@echo "  make vscode-extensions-linux   - Install VSCode extensions on Linux"
	@echo "  make vscode-extensions-mac     - Install VSCode extensions on macOS"
	@echo ""
	@echo "Aliases:"
	@echo "  make dotfiles                  - Alias for dotfiles-linux"

dotfiles-linux:
	$(stow) $(BASE_DIRS) vscode-linux

dotfiles-mac:
	$(stow) $(BASE_DIRS) vscode-mac

# Default target
.DEFAULT_GOAL := help

# Alias for backward compatibility
dotfiles: dotfiles-linux

vscode-extensions-linux:
	cat ~/.config/Code/User/extensions.txt | xargs -L 1 code --install-extension

vscode-extensions-mac:
	cat ~/Library/Application\ Support/Code/User/extensions.txt | xargs -L 1 code --install-extension

install:
	brew install wget neovim tmux fish fnm jq fisher anomalyco/tap/opencode