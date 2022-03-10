#/bin/bash

tput setaf 7; tput bold
echo "Check if node is installed"
tput sgr0

RESULT=$(node --version | sed "s/v16.*/v16/")

if [ $RESULT == "v16" ]
then
	tput setaf 2; tput bold
	echo "NODE v16 IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "DEBUG: $RESULT"
	echo "ERROR: NODE IS NOT INSTALL OR YOUR VERSION DON'T MATCH THE VERSION 16"
  tput sgr0
	exit 1
fi
