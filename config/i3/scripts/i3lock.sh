#!/bin/bash

# icon="$HOME/.config/i3/lock.png"
wallpaper="$HOME/wallpaper-lock.png"
# img="$HOME/.cache/i3lock.png"

# scrot $img
# Pixelate image
#convert $img -scale 10% -scale 1000% -fill black -colorize 60% -gravity South -pointsize 20 -fill white -annotate +0+100 'Enter a password' $img
# Blur image
#convert $img -blur 0x4 500% $img
# convert $wallpaper -gravity center -composite $img
i3lock -i $wallpaper
