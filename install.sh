cat $HOME/dotfiles/install.txt

for param in "$@"
do
  case $param in
    nvim)
      echo 'install nvim plugins'
      nvim +PlugInstall +qall
      ;;
    stow)
      echo 'reload stow'
      cd $HOME/dotfiles/home
      stow -t $HOME *
      cd - > /dev/null # no logs
      cd $HOME/dotfiles/externals
      stow -t $HOME *
      cd - > /dev/null # no logs
      ;;
    install)
      echo 'install'
      source $HOME/dotfiles/scripts/bootstrap/install.sh
      ;;
  esac
done

