#/bin/bash

# check if fish is installed
tput setaf 7; tput bold
echo "Check if fish is installed"
tput sgr0

RESULT=$(fish -v | grep fish | sed "s/\,.*//")

if [ $RESULT == "fish" ]
then
	tput setaf 2; tput bold
	echo "DEBUG: $RESULT"
	echo "FISH IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: FISH IS NOT INSTALL"
  tput sgr0
	exit 1
fi
