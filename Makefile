DOTFILES_DIR := $(CURDIR)
CONFIG_DIR := $(DOTFILES_DIR)/config
VSCODE_FILES := settings.json keybindings.json extensions.txt

.PHONY: help dotfiles dotfiles-linux dotfiles-mac dotfiles-macos setup-ubuntu install vscode-extensions-linux vscode-extensions-mac fisher-plugins fonts-linux

help:
	@echo "Available commands:"
	@echo "  make install                    - Install packages via Homebrew"
	@echo "  make dotfiles-linux            - Symlink dotfiles for Linux"
	@echo "  make dotfiles-mac              - Symlink dotfiles for macOS"
	@echo "  make vscode-extensions-linux   - Install VSCode extensions on Linux"
	@echo "  make vscode-extensions-mac     - Install VSCode extensions on macOS"
	@echo ""
	@echo "Aliases:"
	@echo "  make dotfiles                  - Alias for dotfiles-linux"

dotfiles-linux:
	@mkdir -p "$(HOME)/.config"
	@ln -sfn "$(CONFIG_DIR)/kitty/.config/kitty" "$(HOME)/.config/kitty"
	@ln -sfn "$(CONFIG_DIR)/fish/.config/fish" "$(HOME)/.config/fish"
	@ln -sfn "$(CONFIG_DIR)/nvim/.config/nvim" "$(HOME)/.config/nvim"
	@ln -sfn "$(CONFIG_DIR)/tmux/.config/tmux" "$(HOME)/.config/tmux"
	@ln -sfn "$(CONFIG_DIR)/git/.config/git" "$(HOME)/.config/git"
	@ln -sfn "$(CONFIG_DIR)/opencode/.config/opencode" "$(HOME)/.config/opencode"
	@mkdir -p "$(HOME)/.config/Code/User"
	@$(foreach file,$(VSCODE_FILES),ln -sfn "$(CONFIG_DIR)/vscode/$(file)" "$(HOME)/.config/Code/User/$(file)";)

dotfiles-mac: dotfiles-macos

dotfiles-macos:
	@mkdir -p "$(HOME)/.config"
	@ln -sfn "$(CONFIG_DIR)/kitty/.config/kitty" "$(HOME)/.config/kitty"
	@ln -sfn "$(CONFIG_DIR)/fish/.config/fish" "$(HOME)/.config/fish"
	@ln -sfn "$(CONFIG_DIR)/nvim/.config/nvim" "$(HOME)/.config/nvim"
	@ln -sfn "$(CONFIG_DIR)/tmux/.config/tmux" "$(HOME)/.config/tmux"
	@ln -sfn "$(CONFIG_DIR)/git/.config/git" "$(HOME)/.config/git"
	@ln -sfn "$(CONFIG_DIR)/opencode/.config/opencode" "$(HOME)/.config/opencode"
	@ln -sfn "$(CONFIG_DIR)/aerospace/.config/aerospace" "$(HOME)/.config/aerospace"
	@mkdir -p "$(HOME)/Library/Application Support/Code/User"
	@$(foreach file,$(VSCODE_FILES),ln -sfn "$(CONFIG_DIR)/vscode/$(file)" "$(HOME)/Library/Application Support/Code/User/$(file)";)

# Default target
.DEFAULT_GOAL := help

# Alias for backward compatibility
dotfiles: dotfiles-linux

setup-ubuntu:
	@command -v apt >/dev/null 2>&1 || (echo "apt not found. This target is for Ubuntu." && exit 1)
	sudo apt update
	xargs -a setup/ubuntu/packages.txt sudo apt install -y
	$(MAKE) fonts-linux
	@if ! command -v brew >/dev/null 2>&1; then \
	  /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	fi
	@if [ -d /home/linuxbrew/.linuxbrew/bin ]; then \
	  eval "$$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"; \
	  brew install neovim fnm; \
	  fnm install --lts; \
	  fnm default lts-latest; \
	  eval "$$(fnm env)" && npm install -g opencode-ai; \
	elif command -v brew >/dev/null 2>&1; then \
	  brew install neovim fnm; \
	  fnm install --lts; \
	  fnm default lts-latest; \
	  eval "$$(fnm env)" && npm install -g opencode-ai; \
	fi
	$(MAKE) dotfiles-linux
	$(MAKE) fisher-plugins
	$(MAKE) vscode-extensions-linux

fonts-linux:
	mkdir -p ~/.local/share/fonts
	cp -r setup/common/fonts/*/*.ttf ~/.local/share/fonts/
	fc-cache -fv

fisher-plugins:
	fish -c 'curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher update'

vscode-extensions-linux:
	@if command -v code >/dev/null 2>&1; then \
	  cat ~/.config/Code/User/extensions.txt | xargs -L 1 code --install-extension; \
	else \
	  echo "VSCode not installed. Skipping extensions installation."; \
	fi

vscode-extensions-mac:
	@if command -v code >/dev/null 2>&1; then \
	  cat ~/Library/Application\ Support/Code/User/extensions.txt | xargs -L 1 code --install-extension; \
	else \
	  echo "VSCode not installed. Skipping extensions installation."; \
	fi

install:
	brew install wget neovim tmux fish fnm jq fisher anomalyco/tap/opencode
