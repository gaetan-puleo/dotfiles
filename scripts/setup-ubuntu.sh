#!/usr/bin/env bash
set -euo pipefail

if ! command -v apt >/dev/null 2>&1; then
  echo "apt not found. This script targets Ubuntu." >&2
  exit 1
fi

DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.dotfiles}"
DOTFILES_REPO_DEFAULT="https://github.com/gaetan-puleo/dotfiles.git"


sudo apt update
sudo apt install -y curl git make

if [ -d "$DOTFILES_DIR/.git" ]; then
  git -C "$DOTFILES_DIR" pull --rebase
else
  git clone "${DOTFILES_REPO:-$DOTFILES_REPO_DEFAULT}" "$DOTFILES_DIR"
fi

make -C "$DOTFILES_DIR" setup-ubuntu
