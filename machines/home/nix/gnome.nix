{ pkgs, ... }:
{
  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = [
        "dash-to-dock@micxgx.gmail.com"
        "user-theme@gnome-shell-extensions.gcampax.github.com"
      ];

    };
    # Dock config
    "org/gnome/shell/extensions/dash-to-dock" = {
        "dock-position" = "LEFT";
        "extend-height" = true;
        "dash-max-icons-size" = 32;
        "transparency-mode" = "DYNAMIC";
        "custom-theme-shrink" = true;
        "multi-monitor" = true;
        "dock-fixed" = false;
    };
  };
}
