#/bin/bash

# check if nvim version is printing
tput setaf 7; tput bold
echo "Check Neovim version"
tput sgr0

DISPLAY_VERSION=$(nvim -v | grep NVIM | sed "s/NVIM v//")

CHECK_VERSION=$(echo $DISPLAY_VERSION | sed "s/[0-9]\.//" | sed "s/\.[0-9]//")

if [ $CHECK_VERSION == "6" ]
then
	tput setaf 2; tput bold
	echo "DEBUG: $DISPLAY_VERSION"
	echo "DEBUG: $CHECK_VERSION"
	echo "NVIM IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: NVIM VERSION DIDN'T MATCH"
  tput sgr0
	exit 1
fi

