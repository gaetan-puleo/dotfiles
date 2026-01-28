# Dotfiles

## Overview
This repository contains dotfiles organized by OS with a shared common base. Use the Makefile targets to install configs and set up dependencies.

## Ubuntu setup

### Prerequisites
- Ubuntu 22.04+ or Ubuntu-based distro
- `wget` installed (usually pre-installed)

### Bootstrap from GitHub
Run this from a fresh Ubuntu machine (installs curl, git, make, stow first):

```sh
wget -qO- https://raw.githubusercontent.com/gaetan-puleo/dotfiles/main/scripts/setup-ubuntu.sh | bash
```

Or if you already have the repo cloned:

```sh
cd ~/dotfiles
make setup-ubuntu
```

### What gets installed
- **System packages** (via apt): build-essential, curl, fd-find, fish, fzf, git, jq, kitty, ripgrep, stow, tmux, etc.
- **Fonts**: FiraCode Nerd Font
- **Homebrew**: If not already installed
- **Via Homebrew**: neovim, fnm (Fast Node Manager)
- **Via npm**: opencode-ai
- **Dotfiles**: Symlinked to `~/.config/`
- **Fish plugins**: fisher, z, hydro
- **VSCode extensions**: From extensions.txt

### Dotfiles only (skip package installation)
```sh
make dotfiles-ubuntu
```

## Fedora setup

### Prerequisites
- Fedora 38+ or Fedora-based distro
- `wget` installed

### Bootstrap from GitHub
```sh
wget -qO- https://raw.githubusercontent.com/gaetan-puleo/dotfiles/main/scripts/setup-fedora.sh | bash
```

Or if you already have the repo:

```sh
cd ~/dotfiles
make setup-fedora
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
