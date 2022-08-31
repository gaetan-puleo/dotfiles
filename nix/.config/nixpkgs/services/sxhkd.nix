{ pkgs, ... }:
{
  services.sxhkd = {
    enable = true;
    keybindings = {
      "ctrl + alt + t" = "nixGL kitty";
      "super + Return" = "nixGL kitty";
      
      "super + q" = "xdo close";

      "super + space" = "bash ~/dotfiles/scripts/rofi/bin/launcher_colorful";

      "Print" = "bash ~/dotfiles/scripts/rofi/bin/menu_screenshot";

      "XF86PowerOff" = "bash ~/dotfiles/scripts/rofi/bin/menu_powermenu";

      "XF86AudioMute" = "amixer set 'Master' toggle";

      "XF86AudioLowerVolume" = "amixer -q sset Master 5%-"; #decrease sound volume
    
      "XF86AudioRaiseVolume" =  "amixer -q sset Master 5%+"; #increase sound volume

      "XF86MonBrightnessUp" = "light -A 10 && bash -c \"dunstify `light`% -r 2999\"";

      "XF86MonBrightnessDown" = "light -U 10 && bash -c \"dunstify `light`% -r 2999\"";

      ###########################
      #
      #
      # I3 gaps keybinding 
      #
      #
      ###########################

      # change focus
      "super + {_, shift} + {h,j,k,l}" = "i3-msg {focus,move} {left, down, up, right}";

      # change focus
      "super + {_, shift} + {Left,Down,Up,Right}" = "i3-msg {focus,move} {left, down, up, right}";

      # reload config 
      "super + shift +c" = "i3-msg reload";

      # restart  i3
      "super + shift + r" = "i3-msg restart";

      # resize mode
      "super + r : {h,j,k,l}" = "i3-msg resize {grow, shrink, grow, shrink} width 2 px or 2 ppt";

      "super + r : {Left,Down,Up,Right}" = "i3-msg resize {grow, shrink, grow, shrink} width 2 px or 2 ppt";

      # change workspace and move container
      "super + {_,shift +} {1-9}" = "i3-msg {workspace,move container to workspace} {1-9}";

      # change workspace and move container
      "super + f" = "i3-msg fullscreen toggle";
    };
  };
}
