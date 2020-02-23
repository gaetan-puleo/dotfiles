cat ~/dotfiles/install.txt

for param in "$@"
do
  case $param in
    nvim)
      echo 'install nvim plugins'
      nvim +PlugInstall +qall
      ;;
    stow)
      echo 'reload stow'
      source $HOME/dotfiles/scripts/manage/sync_stow.sh
      ;;
    install)
      echo 'install'
      source $HOME/dotfiles/scripts/bootstrap/install.sh
      ;;
  esac
done

