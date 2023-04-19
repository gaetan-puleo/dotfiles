{ pkgs, config, ... }: {

  # symlink
  home.file."${config.xdg.configHome}/tmux/theme.conf" = {
     source = config.lib.file.mkOutOfStoreSymlink ../../../config/tmux/theme.conf;
  };

  home.file."${config.xdg.configHome}/tmux/tmux.conf" = {
    source = config.lib.file.mkOutOfStoreSymlink ../../../config/tmux/tmux.conf;
   };

}
