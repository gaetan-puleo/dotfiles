stow = cd config && stow -v -t ~

# Detect OS
UNAME := $(shell uname)

# Get all config directories
ALL_DIRS := $(notdir $(wildcard config/*))

# Filter out OS-specific vscode dirs and add the correct one
CONFIG_DIRS := $(filter-out vscode-linux vscode-mac,$(ALL_DIRS))
ifeq ($(UNAME),Darwin)
	CONFIG_DIRS += vscode-mac
else ifeq ($(UNAME),Linux)
	CONFIG_DIRS += vscode-linux
endif

.PHONY: dotfiles dotfiles-dry

dotfiles:
	$(stow) $(CONFIG_DIRS)

install:
	brew install wget neovim tmux fish fnm jq fisher anomalyco/tap/opencode