#/bin/bash

tput setaf 7; tput bold
echo "Check if tmux is installed"
tput sgr0

RESULT=$(tmux -V | sed "s/tmux.*/tmux/")

if [ $RESULT == "tmux" ]
then
	tput setaf 2; tput bold
	echo "TMUX IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: TMUX IS NOT INSTALL"
  tput sgr0
	exit 1
fi
