{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    /* package = pkgs.rofi; */
    terminal = "${pkgs.kitty}/bin/kitty";
    theme = "~/dotfiles/scripts/rofi/theme.rafi";
    plugins = [
    ];
  };
}
