#/bin/bash

# check cli tools
tput setaf 7; tput bold
echo "Check if tar is installed"
tput sgr0

RESULT_TAR=$(tar --version | grep tar | sed "s/tar .*/tar/")

if [ $RESULT_TAR == "tar" ]
then
	tput setaf 2; tput bold
	echo "TAR IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: TAR IS NOT INSTALL"
  tput sgr0
	exit 1
fi

tput setaf 7; tput bold
echo "Check if rg is installed"
tput sgr0

RESULT_RG=$(rg --version | grep ripgrep | sed "s/ripgrep.*/ripgrep/")

if [ $RESULT_RG == "ripgrep" ]
then
	tput setaf 2; tput bold
	echo "RIPGREP IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: RIPGREP IS NOT INSTALL"
  tput sgr0
	exit 1
fi


tput setaf 7; tput bold
echo "Check if jq is installed"
tput sgr0

RESULT_JQ=$(jq --version | grep jq | sed "s/jq.*/jq/")

if [ $RESULT_JQ ]
then
	tput setaf 2; tput bold
	echo "JQ IS INSTALLED"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: JQ IS NOT INSTALL"
  tput sgr0
	exit 1
fi

tput setaf 7; tput bold
echo "Check if HTTPIE is installed"
tput sgr0

RESULT_HTTP=$(http --version)

if [ $RESULT_HTTP == "1.0.3" ]
then
	tput setaf 2; tput bold
	echo "HTTPIE IS INSTALLED AND MATCH VERSION 1.0.3"
  tput sgr0
else
	tput setaf 1; tput bold
	echo "ERROR: HTTPIE IS NOT INSTALL OR DON'T MATCH THE VERSION 1.0.3"
  tput sgr0
	exit 1
fi

#theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
#wanted_theme="'Juno-mirage'"
#if [[ $theme == $wanted_theme ]]; then
#	echo 'SUCCESS: theme set to Juno-mirage'
#else
#	echo $(gsettings get org.gnome.desktop.interface gtk-theme)
#	echo 'ERROR: Juno-mirage theme is not set'
#	exit 1
#fi

#max_icon=$(gsettings get org.gnome.shell.extensions.dash-to-dock dash-max-icon-size )
#expected_max_icon=28

#if [[ $max_icon == $expected_max_icon ]]; then
#	echo 'SUCCESS: dash max icon set to 28'
#else
#	echo $(gsettings get org.gnome.shell.extensions.dash-to-dock dash-max-icon-size)
#	echo 'ERROR: dash max icon not set to 28'
#	exit 1
#fi

#dash_position=$(gsettings get org.gnome.shell.extensions.dash-to-dock dock-position)
#expected_dash_position="'BOTTOM'"

#if [[ $dash_position == $expected_dash_position ]]; then
#	echo 'SUCCESS: dash position set to BOTTOM'
#else
#	echo $(gsettings get org.gnome.shell.extensions.dash-to-dock dock-position)
#	echo 'ERROR: dash position is not set to BOTTOM'
#	exit 1
#fi


