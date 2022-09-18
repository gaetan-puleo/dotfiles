{ pkgs, nixGL, config, ... }: {
       home.file = {
        # dotfiles

        # TMUX
        "${config.xdg.configHome}/tmux/tmux.conf".source = ../../../../home/config/tmux/tmux.conf;
        "${config.xdg.configHome}/tmux/theme.conf".source = ../../../../home/config/tmux/theme.conf;

        # Picom
        "${config.xdg.configHome}/picom/picom.conf".source = ../../../../home/config/picom/picom.conf;

        # Polybar
        "${config.xdg.configHome}/polybar".source = ../../config/polybar;

        # Rofi
        "${config.xdg.configHome}/rofi".source = ../../../../home/config/rofi;

        # Nvim
        "${config.xdg.configHome}/nvim/lua".source = ../../../../home/config/nvim/lua;
        "${config.xdg.configHome}/nvim/init.lua".source = ../../../../home/config/nvim/init.lua;

        # sxhkd
        "${config.xdg.configHome}/sxhkd/sxhkdrc".source = ../../config/sxhkd/sxhkdrc;

        # Wallpaper
        "${config.xdg.configHome}/wallpaper".source = ../../../../home/config/wallpaper;

        # Scripts
        "${config.xdg.configHome}/scripts".source = ../../../../home/config/scripts;

        # Autostart
        "${config.xdg.configHome}/autostart.sh".source = ../../config/autostart/autostart.sh;

        # Fonts
        ".fonts/Icomoon-Feather.ttf".source = ../../../../home/fonts/Icomoon-Feather.ttf;


        # Xmodmap
        ".Xmodmap".source = ../../../../home/config/xmodmap/.Xmodmap;

        # desktop files
        ".local/share/applications/firefox.desktop" = {
          text = ''
            [Desktop Entry]
            Categories=Network;WebBrowser
            Exec=nixGLIntel firefox -P Default %U
            GenericName=Web Browser
            Icon=${pkgs.firefox}/share/icons/hicolor/128x128/apps/firefox.png
            MimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp
            Name=Firefox
            Type=Application
            Version=1.4
            Terminal=False
            Actions=private_window;
            [Desktop Action private_window]
            Name=Open a Private Window
            Icon=${pkgs.firefox}/share/icons/hicolor/128x128/apps/firefox.png
            Exec=nixGLIntel; firefox -P Private %U
          '';
          executable = true;
        };
      ".local/share/applications/kitty.desktop" = {
          text = ''
            [Desktop Entry]
            Categories=Development;System
            Exec=nixGLIntel kitty
            GenericName=Terminal
            Icon=${pkgs.kitty}/share/icons/hicolor/256x256/apps/kitty.png
            Name=Kitty
            Type=Application
            Version=1.4
            Terminal=False
          '';
          executable = true;
        };

      ".local/share/applications/blender.desktop" = {
          text = ''
            [Desktop Entry]
            Categories=Graphics
            Exec=nixGLIntel blender
            GenericName=Blender
            Icon=${pkgs.blender}/share/icons/hicolor/scalable/apps/blender.svg
            Name=Blender
            Type=Application
            Version=1.4
            Terminal=False
          '';
          executable = true;
        };
      /* ".config/i3/config".source =~/dotfiles/.config/i3/config; */
      };
}
