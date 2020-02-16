cat ./install.txt

case $1 in

  stow)
    echo 'reload stow'
    source './scripts/manage/sync_stow.sh'
    exit 0
    ;;
esac
