#/bin/bash

theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
wanted_theme="'Juno-mirage'"
if [[ $theme == $wanted_theme ]]; then
	echo 'SUCCESS: theme set to Juno-mirage'
else
	echo $(gsettings get org.gnome.desktop.interface gtk-theme)
	echo 'ERROR: Juno-mirage theme is not set'
	exit 1
fi

max_icon=$(gsettings get org.gnome.shell.extensions.dash-to-dock dash-max-icon-size )
expected_max_icon=28

if [[ $max_icon == $expected_max_icon ]]; then
	echo 'SUCCESS: dash max icon set to 28'
else
	echo $(gsettings get org.gnome.shell.extensions.dash-to-dock dash-max-icon-size)
	echo 'ERROR: dash max icon not set to 28'
	exit 1
fi

dash_position=$(gsettings get org.gnome.shell.extensions.dash-to-dock dock-position)
expected_dash_position="'BOTTOM'"

if [[ $dash_position == $expected_dash_position ]]; then
	echo 'SUCCESS: dash position set to BOTTOM'
else
	echo $(gsettings get org.gnome.shell.extensions.dash-to-dock dock-position)
	echo 'ERROR: dash position is not set to BOTTOM'
	exit 1
fi



