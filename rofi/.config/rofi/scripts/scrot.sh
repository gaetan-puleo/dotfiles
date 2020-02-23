#!/bin/bash

rofi_command="rofi -theme themes/layout-scrot.rasi"

# Each of the icon is a selectable element
options=$'  Capture the selected area \n  Capture the entire screen \n  Capture the active window'

# chosen="$(echo "$options" | $rofi_command -font "Fira Code Nerd Font" -dmenu)"
chosen="$(echo "$options" | $rofi_command -dmenu)"
case $chosen in
    ) # Scrot a rectangular area
        maim -s $HOME/Pictures/$(date +%s)-screenshot.png
        ;;
    ) # Scrot the whole screen
        sleep 1; maim $HOME/Pictures/$(date +%s)-screenshot.png
        ;;
    ) # Scrot the active window
        sleep 1; maim -i $(xdotool getactivewindow) $HOME/Pictures/$(date +%s)-screenshot.png
        ;;
esac

