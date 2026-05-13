#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
MACHINE="${1:-}"

if [ -z "$MACHINE" ] || [ ! -d "$DOTFILES_DIR/$MACHINE" ]; then
    echo "Usage: ./install.sh <machine>"
    echo ""
    echo "Machines disponibles :"
    ls -d "$DOTFILES_DIR"/*/  2>/dev/null | xargs -I{} basename {}
    exit 1
fi

echo "Installation des dotfiles pour : $MACHINE"

find "$DOTFILES_DIR/$MACHINE" -type f | while read -r src; do
    rel="${src#$DOTFILES_DIR/$MACHINE/}"
    dest="$HOME/$rel"

    # Supprimer tout symlink qui bloque le chemin
    for parent in $(dirname "$rel" | tr '/' '\n' | awk '{p=p"/"$0; print p}'); do
        [ -L "$HOME$parent" ] && rm -v "$HOME$parent"
    done

    mkdir -p "$(dirname "$dest")"
    [ -e "$dest" ] && [ ! -L "$dest" ] && mv "$dest" "$dest.bak" && echo "  backup $rel"
    ln -sf "$src" "$dest"
    echo "  $rel"
done

echo "Done."
