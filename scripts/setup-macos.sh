#!/usr/bin/env bash
set -euo pipefail

if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "This script targets macOS." >&2
  exit 1
fi

DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.dotfiles}"
DOTFILES_REPO_DEFAULT="https://github.com/gaetan-puleo/dotfiles.git"

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [ -d "$DOTFILES_DIR/.git" ]; then
  git -C "$DOTFILES_DIR" pull --rebase
else
  git clone "${DOTFILES_REPO:-$DOTFILES_REPO_DEFAULT}" "$DOTFILES_DIR"
fi

brew install wget neovim tmux fish fnm jq fisher anomalyco/tap/opencode
fnm install --lts
fnm default lts-latest
eval "$(fnm env)" && npm install -g opencode-ai

make -C "$DOTFILES_DIR" dotfiles-mac
make -C "$DOTFILES_DIR" vscode-extensions-mac
