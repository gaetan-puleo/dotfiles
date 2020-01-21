#!/usr/bin/env bash

pkill trayer
pkill dunst
pkill sxhkd
pkill feh
pkill compton
pkill tint2


sxhkd &
compton -b -f
tint2 &
dunst &
nm-applet &
xfce4-power-manager &
blueman-applet &
setxkbmap -layout us -variant altgr-intl -option altwin:swap_lalt_lwin &
setxkbmap -option caps:super &
feh --bg-scale ~/wallpaper.jpg &
# trayer --edge top --widthtype request --align right --tint 0xffffff --transparent false --alpha 255 &
notify-send -t 1000 Config "Config Reloaded"
