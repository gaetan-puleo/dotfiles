{config, pkgs, ...}:
let unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {
  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
  ]) ++ (with unstable.gnome; [
    # cheese # webcam tool
    # gnome-music
    gnome-terminal
    gedit # text editor
    epiphany # web browser
    # geary # email reader
    # evince # document viewer
    gnome-characters
    # totem # video player
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
  ]);
}
