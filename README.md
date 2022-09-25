# Nixos
```bash
# make a backup
cp /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bak

# do a symlink
ln -s /home/{username}/dotfiles/{host}/nix-etc/configuration.nix
```
# Home-manager
```bash
cd to/dotfiles/path
ln -s ./machines/{host}/nix ~/.config/nixpkgs
```
