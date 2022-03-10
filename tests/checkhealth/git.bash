#/bin/bash

tput setaf 7; tput bold
echo "Check if git is installed"
tput sgr0

RESULT=$(git --version | sed "s/git.*/git/")

if [ $RESULT == "git" ]
then
	tput setaf 2; tput bold
	echo "GIT IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: GIT IS NOT INSTALL"
  tput sgr0
	exit 1
fi

