# Dotfiles

## Overview
This repository contains dotfiles organized by OS with a shared common base. Use the Makefile targets to install configs and set up dependencies.

## Ubuntu setup
1) Ensure you are on Ubuntu.
2) Run the setup target:

```sh
make setup-ubuntu
```

This will:
- Install packages listed in `setup/ubuntu/packages.txt` via apt
- Install Homebrew if missing
- Install Neovim via Homebrew
- Stow dotfiles with `make dotfiles-ubuntu`
- Install VSCode extensions with `make vscode-extensions-linux`

## Dotfiles install only
```sh
make dotfiles-ubuntu
```

## Notes
- Ubuntu package list: `setup/ubuntu/packages.txt`
- Neovim is installed via Homebrew on Ubuntu

## Bootstrap from GitHub
Run this from a fresh Ubuntu machine.

```sh
curl -fsSL https://raw.githubusercontent.com/gaetan-puleo/dotfiles/main/scripts/setup-ubuntu.sh | bash
```
