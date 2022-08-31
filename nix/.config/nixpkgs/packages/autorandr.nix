{ pkgs, ... }: {
   programs.autorandr = {
    enable = true;
    hooks = {
      postswitch = {
        "display-notif" = "dunstify \"Switch mode $AUTORANDR_CURRENT_PROFILE\"";
        "change-background" = "bash ~/.fehbg";
      };
    };
  };
}
