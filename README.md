**WIP**
# Setup

```bash
git clone http://github.com/gaetan-puleo/dotfiles.git

# install arch in containers with softwares
bash $HOME/dotfiles/distrobox/arch/install.bash
```

### VM Installation

```bash
bash ~/dotfiles/machines/vbox-ubuntu/scripts/install.bash 
```

# Nixos

```bash
nix-shell -p wget git

# make a backup
cp /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bak

# do a symlink
ln -s /home/{username}/dotfiles/machines/{host}/etc-nixos/configuration.nix
```

# Home-manager

```bash
cd to/dotfiles/path
ln -s ./machines/{host}/nix ~/.config/nixpkgs
```
