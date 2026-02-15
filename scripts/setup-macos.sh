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

if [ -d /opt/homebrew/bin ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif command -v brew >/dev/null 2>&1; then
  eval "$(brew shellenv)"
fi

if [ -d "$DOTFILES_DIR/.git" ]; then
  git -C "$DOTFILES_DIR" pull --rebase
else
  git clone "${DOTFILES_REPO:-$DOTFILES_REPO_DEFAULT}" "$DOTFILES_DIR"
fi

brew install wget fish git curl make fzf ripgrep tmux kitty jq neovim fnm anomalyco/tap/opencode
brew install --cask visual-studio-code
fnm install --lts
fnm default lts-latest
eval "$(fnm env)" && npm install -g opencode-ai

make -C "$DOTFILES_DIR" dotfiles-mac
if [ ! -f "$HOME/.config/opencode/opencode.json" ]; then
  cp "$HOME/.config/opencode/opencode.json.example" "$HOME/.config/opencode/opencode.json"
fi
mkdir -p "$HOME/.config/fish/functions"
if [ ! -f "$HOME/.config/fish/functions/fisher.fish" ]; then
  curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish \
    -o "$HOME/.config/fish/functions/fisher.fish"
fi
fish -c 'set -eU fish_plugins; set -e fish_plugins; source ~/.config/fish/functions/fisher.fish; fisher update'

if command -v code >/dev/null 2>&1; then
  cat ~/Library/Application\ Support/Code/User/extensions.txt | xargs -L 1 code --install-extension
fi
