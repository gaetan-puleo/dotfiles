{ pkgs, nixGL, config, ... }: {
       home.file = {
        # dotfiles

        # TMUX
        #"${config.xdg.configHome}/tmux/tmux.conf".source = ../../../../home/config/tmux/tmux.conf;
        "${config.xdg.configHome}/tmux/theme.conf".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/tmux/theme.conf;

        # Picom
        "${config.xdg.configHome}/picom/picom.conf".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/picom/picom.conf;

        # Polybar
        "${config.xdg.configHome}/polybar".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/polybar;

        # Rofi
        "${config.xdg.configHome}/rofi".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/rofi;

        # Nvim
        "${config.xdg.configHome}/nvim/init.lua".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/nvim/init.lua;
        "${config.xdg.configHome}/nvim/lua".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/nvim/lua;

        # sxhkd
        "${config.xdg.configHome}/sxhkd/sxhkdrc".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/sxhkd/sxhkdrc;

        # Wallpaper
        "${config.xdg.configHome}/wallpaper".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/wallpaper;

        # Scripts
        "${config.xdg.configHome}/scripts".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/scripts;

        # Autostart
        "${config.xdg.configHome}/autostart.sh".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/autostart/autostart.sh;

        # Xmodmap
        ".Xmodmap".source = config.lib.file.mkOutOfStoreSymlink ../../../../home/config/xmodmap/.Xmodmap;

        # NPM
        ".npmrc.dist".source = ../../../../home/config/npm/.npmrc.dist;

        # Android

        /* "Android/Sdk/platform-tools".source = "${pkgs.android-tools}/bin"; */

      /* ".config/i3/config".source =~/dotfiles/.config/i3/config; */
      };
}
