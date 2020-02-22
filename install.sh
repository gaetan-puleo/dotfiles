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
      source ~/dotfiles/scripts/manage/sync_stow.sh
      ;;
    apt)
      echo 'install'
      source ~/dotfiles/scripts/bootstrap/install/apt.sh
      ;;
  esac
done

