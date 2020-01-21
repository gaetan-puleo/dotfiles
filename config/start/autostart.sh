#!/usr/bin/env bash

# keyboard map
setxkbmap -layout us -variant altgr-intl &
setxkbmap -option caps:super &

# kill all
pkill trayer
pkill dunst
pkill sxhkd
pkill feh
pkill compton
pkill tint2

# keyboard shortcut
sxhkd &

# compositor
compton -b -f

# panel
tint2 &

# notifications
dunst &

# wifi applet
nm-applet &

# power manager and display brightness shortcuts 
xfce4-power-manager &

# bluetooth applet
blueman-applet &

# set wallpaper
feh --bg-scale ~/wallpaper.jpg &

# final notifications
notify-send -t 1000 Config "Config Reloaded"
