{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.kitty}/bin/kitty";
    theme = "~/dotfiles/scripts/rofi/theme.rafi";
    plugins = [
    ];
  };
}
