#!/usr/bin/env bash
set -euo pipefail

if ! command -v apt >/dev/null 2>&1; then
  echo "apt not found. This script targets Ubuntu." >&2
  exit 1
fi

DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.dotfiles}"
DOTFILES_REPO_DEFAULT="https://github.com/gaetan-puleo/dotfiles.git"

sudo apt update
sudo apt install -y fish curl git make

if [ -d "$DOTFILES_DIR/.git" ]; then
  git -C "$DOTFILES_DIR" pull --rebase
else
  git clone "${DOTFILES_REPO:-$DOTFILES_REPO_DEFAULT}" "$DOTFILES_DIR"
fi

# sudo install -d -m 0755 /etc/apt/keyrings
# wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/keyrings/microsoft.gpg >/dev/null
# sudo chmod 0644 /etc/apt/keyrings/microsoft.gpg
# echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null
#
# sudo apt update
# sudo apt install -y \
#   build-essential \
#   ca-certificates \
#   curl \
#   fd-find \
#   fish \
#   fzf \
#   git \
#   gnupg \
#   jq \
#   kitty \
#   lsb-release \
#   pkg-config \
#   python3 \
#   python3-pip \
#   ripgrep \
#   tar \
#   tmux \
#   unzip \
#   wget \
#   zip
# sudo apt install -y code
#
# if ! command -v brew >/dev/null 2>&1; then
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# fi
#
# if [ -d /home/linuxbrew/.linuxbrew/bin ]; then
#   eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# elif command -v brew >/dev/null 2>&1; then
#   eval "$(brew shellenv)"
# fi
#
# brew install neovim fnm anomalyco/tap/opencode
# fnm install --lts
# fnm default lts-latest
# eval "$(fnm env)" && npm install -g opencode-ai

make -C "$DOTFILES_DIR" dotfiles-linux
cat "$HOME/.config/fish/fish_plugins"
fish -c 'curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source; fisher install jorgebucaran/fisher; fisher update'

# if command -v code >/dev/null 2>&1; then
#   cat ~/.config/Code/User/extensions.txt | xargs -L 1 code --install-extension
# fi

sudo chsh -s /usr/bin/fish "$USER"
