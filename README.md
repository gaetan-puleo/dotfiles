# dotfiles

Dotfiles organisés par machine. Chaque dossier reproduit l'arborescence de `$HOME`.

## Installation

```bash
git clone <repo> ~/dotfiles
cd ~/dotfiles
./install.sh <machine>
```

Exemple :

```bash
./install.sh ubuntu-framework-laptop
```

Le script crée des symlinks de chaque fichier du dossier machine vers `$HOME`. Les fichiers existants sont sauvegardés en `.bak`.

## Ajouter une machine

1. Créer un dossier au nom de la machine
2. Y placer les fichiers en respectant l'arborescence de `$HOME`
3. Lancer `./install.sh <nouvelle-machine>`
