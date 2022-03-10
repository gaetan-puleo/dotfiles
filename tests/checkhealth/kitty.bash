#/bin/bash

tput setaf 7; tput bold
echo "Check if kitty is installed"
tput sgr0

RESULT=$(kitty --version | sed "s/kitty.*/kitty/")

if [ $RESULT == "kitty" ]
then
	tput setaf 2; tput bold
	echo "KITTY IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: KITTY IS NOT INSTALL"
  tput sgr0
	exit 1
fi
