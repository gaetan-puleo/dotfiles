# Dotfiles

## Overview
This repository contains dotfiles in a single config root. Use the Makefile targets to install configs and set up dependencies.

## Ubuntu setup

### Prerequisites
- Ubuntu 22.04+ or Ubuntu-based distro
- `wget` installed (usually pre-installed)

### Bootstrap from GitHub
Run this from a fresh Ubuntu machine (installs curl, git, make first):

```sh
wget -qO- https://raw.githubusercontent.com/gaetan-puleo/dotfiles/main/scripts/setup-ubuntu.sh | bash
```

Or if you already have the repo cloned:

```sh
cd ~/dotfiles
make setup-ubuntu
```

### What gets installed
- **System packages** (via apt): build-essential, curl, fd-find, fish, fzf, git, jq, kitty, ripgrep, tmux, etc.
- **Fonts**: FiraCode Nerd Font
- **Homebrew**: If not already installed
- **Via Homebrew**: neovim, fnm (Fast Node Manager)
- **Via npm**: opencode-ai
- **Dotfiles**: Symlinked to `~/.config/`
- **Fish plugins**: fisher, z, hydro
- **VSCode extensions**: From extensions.txt

### Dotfiles only (skip package installation)
```sh
make dotfiles-linux
```

## macOS setup

### Prerequisites
- macOS 13+ recommended
- `curl` installed (pre-installed on macOS)

### Bootstrap from GitHub
```sh
curl -fsSL https://raw.githubusercontent.com/gaetan-puleo/dotfiles/main/scripts/setup-macos.sh | bash
```

Or if you already have the repo cloned:

```sh
cd ~/dotfiles
make dotfiles-mac
make vscode-extensions-mac
```

## Manual installation

### Install fonts only
```sh
make fonts-linux
```

### Install fish plugins only
```sh
make fisher-plugins
```

### Install VSCode extensions only
```sh
make vscode-extensions-linux
```
