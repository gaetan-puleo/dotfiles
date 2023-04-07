{ pkgs, config, machinePath,... }: {
  # nvim

  home.file."${config.xdg.configHome}/nvim"= {
    source = config.lib.file.mkOutOfStoreSymlink ../../../config/nvim;
  };
}
