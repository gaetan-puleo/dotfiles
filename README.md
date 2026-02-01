# Dotfiles

## Overview
This repository contains dotfiles in a single config root. Use the OS setup scripts to install dependencies and apply configs.

## Ubuntu setup

### Prerequisites
- Ubuntu 22.04+ or Ubuntu-based distro
- `wget` installed (usually pre-installed)

### Bootstrap from GitHub
Run this from a fresh Ubuntu machine:

```sh
wget -qO- https://raw.githubusercontent.com/gaetan-puleo/dotfiles/main/scripts/setup-ubuntu.sh | bash
```

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
```

## Manual installation

### Dotfiles only
```sh
make dotfiles-linux
```
