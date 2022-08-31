{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.kitty}/bin/kitty";
    theme = "~/.config/rofi/theme.rafi";
    plugins = [
    ];
  };
}
