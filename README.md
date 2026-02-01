# Dotfiles

Bootstrap Ubuntu:

```sh
wget -qO- https://raw.githubusercontent.com/gaetan-puleo/dotfiles/main/scripts/setup-ubuntu.sh | bash
```

Bootstrap macOS:

```sh
curl -fsSL https://raw.githubusercontent.com/gaetan-puleo/dotfiles/main/scripts/setup-macos.sh | bash
```

Dotfiles only:

```sh
make dotfiles-linux
make dotfiles-mac
```

Fisher (Homebrew):

```sh
brew install fisher
```
