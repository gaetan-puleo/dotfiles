{ pkgs, nixGL, ... }: {
       home.file = {
        ".local/share/applications/firefox.desktop" = {
          text = ''
            [Desktop Entry]
            Categories=Network;WebBrowser
            Exec=nixGL firefox -P Default %U
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
            Exec=nixGL firefox -P Private %U
          '';
          executable = true;
        };
      ".local/share/applications/kitty.desktop" = {
          text = ''
            [Desktop Entry]
            Categories=Development;System
            Exec=nixGL kitty
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
            Exec=nixGL blender
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