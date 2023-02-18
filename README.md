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
