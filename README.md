**WIP**

# TL'DR

```bash
sudo apt update && sudo apt install -y curl git uidmap

git clone http://github.com/gaetan-puleo/dotfiles.git

bash ~/dotfiles/commons/scripts/install-docker.bash
# or
bash ~/dotfiles/commons/scripts/install-docker-rootless.bash
```
# Mes Dotfiles et script d'installation

Comme on dit, "Here be dragons"!, l'utilisation de ce repo est personnelle et je ne garantie aucunement son utilisation.

Vous pouvez cependant la parcourir et la tester dans une VM.

La procédure à suivre est comprise dans la partie VM Installation.

Je ne garantie pas pour autant le fonctionnement de ma config dans la VM même si je vais essayer de la garder fonctionnelle pour des besoins de tests.


## TL'DR

```bash
# require curl and git

```

## Présentation

Bienvenue dans mon repo, ici ce trouve ma configuration que j'utilise au quotidien.

Ma config est séparé en 2 parties.

- Le système hôte, n'importe quelle distribution linux (en pratique nixos)
- Le système invité (basé sur arch)

J'utilise distrobox pour gérer mon système invité.

Des systèmes secondaires sont également possibles pour des besoins spécifiques, mais ne font pas partie de ma config. (par exemple si l'utilisation d'une image ubuntu 20.04 est nécessaire)

### Le système Hôte
Le système hôte ne sert juste que à accueillir `docker` et `distribox`.
`home-manager` et `nix` sont également installés il s'agit d'un vestige de ma configuration sous nix, mais je pense les garder, ils permettent de configurer très précisément mon environnement.

J'envisage d'installer un OS immutable, ou au moins essayer.

### Le système invité (stable)

C'est ici que tous mes logiciels sont installés
Il s'agit d'un container docker basé sur une image `archlinux`

L'installation des logiciels est scripté par un script bash.

Une possible évolution sera de gérer l'ensemble de mon installation via distrobox, selon l'évolution du système.

Pour l'utiliser `db enter arch`

### Le système invité (de test)
Ce sytème invité est le même que le système invité, sauf, qu'il me permet de tester des choses sans tout casser. Attention, je rappelle que la home est partagé avec la home du système hôte.

Pour l'utiliser `db enter test`

### Des espaces secondaires
 Des espaces peuvent également être créés quand un besoin d'isolation est nécessaire.
## Installation

```bash
git clone http://github.com/gaetan-puleo/dotfiles.git

# install arch in containers with softwares
bash $HOME/dotfiles/distrobox/arch/install.bash
```

### VM Installation

```bash
sudo apt update && sudo apt install git curl -y
bash ~/dotfiles/machines/vbox-ubuntu/scripts/install.bash
```

### Nixos

```bash
nix-shell -p wget git

# make a backup
cp /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bak

# do a symlink
ln -s /home/{username}/dotfiles/machines/{host}/etc-nixos/configuration.nix
```

### Home-manager

```bash
cd to/dotfiles/path
ln -s ./machines/{host}/nix ~/.config/nixpkgs
```
