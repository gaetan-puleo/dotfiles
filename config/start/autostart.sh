#!/usr/bin/env bash

dunst &
sxhkd &
compton -b -f
nm-applet &
xfce4-power-manager &
blueman-applet &
setxkbmap -option caps:super &
feh --bg-scale ~/wallpaper.jpg &
xfce4-panel &
