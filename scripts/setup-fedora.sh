#!/usr/bin/env bash
set -euo pipefail

if ! command -v dnf >/dev/null 2>&1; then
  echo "dnf not found. This script targets Fedora." >&2
  exit 1
fi

DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.dotfiles}"
DOTFILES_REPO_DEFAULT="https://github.com/gaetan-puleo/dotfiles.git"


sudo dnf update -y
sudo dnf install -y curl git make stow

if [ -d "$DOTFILES_DIR/.git" ]; then
  git -C "$DOTFILES_DIR" pull --rebase
else
  git clone "${DOTFILES_REPO:-$DOTFILES_REPO_DEFAULT}" "$DOTFILES_DIR"
fi

make -C "$DOTFILES_DIR" setup-fedora
