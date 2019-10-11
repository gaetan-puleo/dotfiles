#!/bin/bash
mkdir ~/dotfiles/tmp
mkdir ~/.local/bin/
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
