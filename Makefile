DOTFILES_DIR := $(CURDIR)
CONFIG_DIR := $(DOTFILES_DIR)/config
VSCODE_FILES := settings.json keybindings.json extensions.txt

.PHONY: help dotfiles-linux dotfiles-mac link-common link-vscode-linux link-vscode-macos

help:
	@echo "Available commands:"
	@echo "  make dotfiles-linux            - Symlink dotfiles for Linux"
	@echo "  make dotfiles-mac              - Symlink dotfiles for macOS"

dotfiles-linux: link-common link-vscode-linux

dotfiles-mac: link-common
	@ln -sfn "$(CONFIG_DIR)/aerospace/.config/aerospace" "$(HOME)/.config/aerospace"
	@$(MAKE) link-vscode-macos

# Default target
.DEFAULT_GOAL := help


link-common:
	@mkdir -p "$(HOME)/.config"
	@ln -sfn "$(CONFIG_DIR)/kitty/.config/kitty" "$(HOME)/.config/kitty"
	@ln -sfn "$(CONFIG_DIR)/fish/.config/fish" "$(HOME)/.config/fish"
	@ln -sfn "$(CONFIG_DIR)/nvim/.config/nvim" "$(HOME)/.config/nvim"
	@ln -sfn "$(CONFIG_DIR)/tmux/.config/tmux" "$(HOME)/.config/tmux"
	@ln -sfn "$(CONFIG_DIR)/git/.config/git" "$(HOME)/.config/git"
	@ln -sfn "$(CONFIG_DIR)/opencode/.config/opencode" "$(HOME)/.config/opencode"

link-vscode-linux:
	@mkdir -p "$(HOME)/.config/Code/User"
	@$(foreach file,$(VSCODE_FILES),ln -sfn "$(CONFIG_DIR)/vscode/$(file)" "$(HOME)/.config/Code/User/$(file)";)

link-vscode-macos:
	@mkdir -p "$(HOME)/Library/Application Support/Code/User"
	@$(foreach file,$(VSCODE_FILES),ln -sfn "$(CONFIG_DIR)/vscode/$(file)" "$(HOME)/Library/Application Support/Code/User/$(file)";)
