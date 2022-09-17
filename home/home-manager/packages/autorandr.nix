{ pkgs, ... }: {
   programs.autorandr = {
    enable = true;
    hooks = {
      postswitch = {
        "display-notif" = "dunstify \"Switch mode $AUTORANDR_CURRENT_PROFILE\"";
        "change-background" = "feh --no-fehbg --bg-fill ~/.config/wallpaper/tokyo-night-girl.jpg &";
        "reload-bars" = "bash  ~/.config/scripts/polybar/launch-bars.sh";
      };
      preswitch = {
        "kill-polybar" = "pkill -9 polybar";
      };
    };
  };
}

