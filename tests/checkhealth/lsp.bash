#/bin/bash

tput setaf 7; tput bold
echo "Check if eslint_d is installed"
tput sgr0

RESULT_ESLINTD=$(eslint_d --version | sed "s/.*eslint_d .*/eslint_d/")

if [ $RESULT_ESLINTD == "eslint_d" ]
then
	tput setaf 2; tput bold
	echo "DEBUG: $RESULT_ESLINTD"
	echo "ESLINT_D IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: ESLINT_D IS NOT INSTALL"
  tput sgr0
	exit 1
fi


tput setaf 7; tput bold
echo "Check if tsc is installed"
tput sgr0

RESULT_TSC=$(tsc -v | sed "s/Version .*/tsc/")

if [ $RESULT_TSC == "tsc" ]
then
	tput setaf 2; tput bold
	echo "TSC IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: TSC IS NOT INSTALL"
  tput sgr0
	exit 1
fi


tput setaf 7; tput bold
echo "Check if tailwindcss-language-server is installed"
tput sgr0

RESULT_TAILWIND=$(whereis tailwindcss-language-server | sed "s/tailwindcss-language-server://")
if [ -f $RESULT_TAILWIND ]
then
	tput setaf 2; tput bold
	echo "TAILWINDCSS-LANGUAGE-SERVER IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo $RESULT_TAILWIND
	echo "ERROR: TAILWINDCSS-LANGUAGE-SERVER IS NOT INSTALL"
  tput sgr0
	exit 1
fi


tput setaf 7; tput bold
echo "Check if css-languageserver is installed"
tput sgr0

RESULT_CSS=$(whereis css-languageserver | sed "s/css-languageserver://")
if [ -f $RESULT_CSS ]
then
	tput setaf 2; tput bold
	echo "CSS-LANGUAGESERVER IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: CSS-LANGUAGESERVER IS NOT INSTALL"
  tput sgr0
	exit 1
fi

tput setaf 7; tput bold
echo "Check if bash-language-server is installed"
tput sgr0

RESULT_BASH=$(bash-language-server -v | sed "s/Version .*/bash-language-server/")

if [ $RESULT_BASH == "bash-language-server" ]
then
	tput setaf 2; tput bold
	echo "BASH-LANGUAGE-SERVER IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR:BASH-LANGUAGE-SERVER IS NOT INSTALL"
  tput sgr0
	exit 1
fi


#bash-language-server -v
