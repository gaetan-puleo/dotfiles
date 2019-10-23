mkdir -p ~/dotfiles/tmp
mkdir -p ~/.local/bin/

# this line will be not working on docker
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

