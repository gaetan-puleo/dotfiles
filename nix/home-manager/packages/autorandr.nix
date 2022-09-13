{ pkgs, ... }: {
   programs.autorandr = {
    enable = true;
    hooks = {
      postswitch = {
        "display-notif" = "dunstify \"Switch mode $AUTORANDR_CURRENT_PROFILE\"";
        "change-background" = "feh --no-fehbg --bg-fill '/home/gaetan/.config/wallpaper/tokyo-night-girl.jpg' &";
      };
    };
  };
}
