#!/bin/bash
git config --global alias.alias "config --get-regexp 'alias.*"
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.cm "commit -m"
git config --global alias.lb "branch -a"
git config --global alias.l "log -20 --pretty=format:'%C(magenta)%h%Creset - %<(24)%C(cyan)%an%Creset %C(dim red)%ar%Creset : %s' --no-merges"
git config --global alias.ac "!git add . && git commit -am"
git config --global alias.state "!git fetch --prune ; git fetch --tags ; clear && git branch -vv && git status"
