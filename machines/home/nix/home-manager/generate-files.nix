{ pkgs, nixGL, config, ... }: {
       home.file = {
        # dotfiles

        # TMUX
        #"${config.xdg.configHome}/tmux/tmux.conf".source = ../../../../home/config/tmux/tmux.conf;
        "${config.xdg.configHome}/tmux/theme.conf".source = ../../../../home/config/tmux/theme.conf;

        # Picom
        "${config.xdg.configHome}/picom/picom.conf".source = ../../../../home/config/picom/picom.conf;

        # Polybar
        "${config.xdg.configHome}/polybar".source = ../../../../home/config/polybar;

        # Rofi
        "${config.xdg.configHome}/rofi".source = ../../../../home/config/rofi;

        # Nvim
        "${config.xdg.configHome}/nvim/init.lua".source = ../../../../home/config/nvim/init.lua;
        "${config.xdg.configHome}/nvim/lua".source = ../../../../home/config/nvim/lua;

        # sxhkd
        "${config.xdg.configHome}/sxhkd/sxhkdrc".source = ../../../../home/config/sxhkd/sxhkdrc;

        # Wallpaper
        "${config.xdg.configHome}/wallpaper".source = ../../../../home/config/wallpaper;

        # Scripts
        "${config.xdg.configHome}/scripts".source = ../../../../home/config/scripts;

        # Autostart
        "${config.xdg.configHome}/autostart.sh".source = ../../../../home/config/autostart/autostart.sh;

        # Xmodmap
        ".Xmodmap".source = ../../../../home/config/xmodmap/.Xmodmap;

        # NPM
        ".npmrc.dist".source = ../../../../home/config/npm/.npmrc.dist;

        # Android

        /* "Android/Sdk/platform-tools".source = "${pkgs.android-tools}/bin"; */

      /* ".config/i3/config".source =~/dotfiles/.config/i3/config; */
      };
}
