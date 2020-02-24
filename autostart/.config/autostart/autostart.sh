#!/usr/bin/env bash

# kill all
pkill trayer
pkill dunst
pkill sxhkd
pkill feh
pkill tint2
# pkill compton

# keyboard shortcut
sxhkd &

# compositor
# compton --config ~/.config/compton.conf &


# panel
tint2 -c ~/.config/tint2/tint2-toprc &
tint2 -c ~/.config/tint2/tint2-bottomrc &

# notifications
dunst &

# wifi applet
nm-applet &

# power manager and display brightness shortcuts 
xfce4-power-manager &

# bluetooth applet
blueman-applet &

# set wallpaper
feh --randomize --bg-scale ~/Pictures/wallpapers/* 

# keyboard map
setxkbmap -layout us -variant altgr-intl -option caps:super &

# final notifications
notify-send -t 1000 Config "Config Reloaded" &
