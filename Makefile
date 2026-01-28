STOW := stow -v -t ~
STOW_CONFIG := $(STOW) -d config
STOW_COMMON := $(STOW) -d config/common
STOW_UBUNTU := $(STOW) -d config/ubuntu
STOW_FEDORA := $(STOW) -d config/fedora
STOW_MACOS := $(STOW) -d config/macos

COMMON_PACKAGES := $(notdir $(wildcard config/common/*))
UBUNTU_PACKAGES := $(notdir $(wildcard config/ubuntu/*))
FEDORA_PACKAGES := $(notdir $(wildcard config/fedora/*))
MACOS_PACKAGES := $(notdir $(wildcard config/macos/*))

.PHONY: help dotfiles dotfiles-linux dotfiles-mac dotfiles-ubuntu dotfiles-fedora dotfiles-macos setup-ubuntu setup-fedora install vscode-extensions-linux vscode-extensions-mac fisher-plugins fonts-linux

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
	@if [ -n "$(COMMON_PACKAGES)" ]; then $(STOW_COMMON) $(COMMON_PACKAGES); fi
	@if [ -n "$(UBUNTU_PACKAGES)" ]; then $(STOW_UBUNTU) $(UBUNTU_PACKAGES); fi
	$(STOW_CONFIG) vscode-linux

dotfiles-mac:
	@if [ -n "$(COMMON_PACKAGES)" ]; then $(STOW_COMMON) $(COMMON_PACKAGES); fi
	@if [ -n "$(MACOS_PACKAGES)" ]; then $(STOW_MACOS) $(MACOS_PACKAGES); fi
	$(STOW_CONFIG) vscode-mac

dotfiles-ubuntu:
	@if [ -n "$(COMMON_PACKAGES)" ]; then $(STOW_COMMON) $(COMMON_PACKAGES); fi
	@if [ -n "$(UBUNTU_PACKAGES)" ]; then $(STOW_UBUNTU) $(UBUNTU_PACKAGES); fi
	$(STOW_CONFIG) vscode-linux

dotfiles-fedora:
	@if [ -n "$(COMMON_PACKAGES)" ]; then $(STOW_COMMON) $(COMMON_PACKAGES); fi
	@if [ -n "$(FEDORA_PACKAGES)" ]; then $(STOW_FEDORA) $(FEDORA_PACKAGES); fi
	$(STOW_CONFIG) vscode-linux

dotfiles-macos:
	@if [ -n "$(COMMON_PACKAGES)" ]; then $(STOW_COMMON) $(COMMON_PACKAGES); fi
	@if [ -n "$(MACOS_PACKAGES)" ]; then $(STOW_MACOS) $(MACOS_PACKAGES); fi
	$(STOW_CONFIG) vscode-mac

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
	$(MAKE) dotfiles-ubuntu
	$(MAKE) fisher-plugins
	$(MAKE) vscode-extensions-linux

setup-fedora:
	@command -v dnf >/dev/null 2>&1 || (echo "dnf not found. This target is for Fedora." && exit 1)
	sudo dnf update -y
	sudo dnf install -y $$(cat setup/fedora/packages.txt | tr '\n' ' ')
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
	$(MAKE) dotfiles-fedora
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
