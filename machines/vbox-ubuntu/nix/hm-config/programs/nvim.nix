{ pkgs, config,... }:
let

in
{
  # nvim

  home.file."${config.xdg.configHome}/nvim"= {
    source = config.lib.file.mkOutOfStoreSymlink /home/gaetan/dotfiles/commons/config/nvim;
  };
}
