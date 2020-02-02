#!/usr/bin/env bash

# kill all
pkill trayer
pkill dunst
pkill sxhkd
pkill feh
pkill compton
pkill tint2
pkill conky

# keyboard shortcut
sxhkd &

# compositor
compton -b -f &

# panel
tint2 -c ~/dotfiles/config/tint2/tint2-toprc &
tint2 -c ~/dotfiles/config/tint2/tint2-bottomrc &

# system info
conky &

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

# keyboard map
setxkbmap -layout us -variant altgr-intl -option caps:super &

# final notifications
notify-send -t 1000 Config "Config Reloaded" &
