cat ./install.txt



for param in "$@"
do
  case $param in

    stow)
      echo 'reload stow'
      source './scripts/manage/sync_stow.sh'
      ;;
    apt)
      echo 'install'
      source './scripts/bootstrap/install/apt.sh'
      ;;
  esac
done


