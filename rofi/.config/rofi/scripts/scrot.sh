#!/bin/bash
case1="  Capture the selected area"
case2="  Capture the entire screen"
case3="  Capture the active window"
rofi_command="rofi -theme themes/layout-scrot.rasi"

# Each of the icon is a selectable element
options=$case1$'\n'$case2$'\n'$case3

# chosen="$(echo "$options" | $rofi_command -font "Fira Code Nerd Font" -dmenu)"
chosen="$(echo "$options" | $rofi_command -dmenu)"
case $chosen in
    $case1) # Scrot a rectangular area
        sleep 1; maim -s $HOME/Pictures/$(date +%s)-screenshot.png
        ;;
    $case2) # Scrot the whole screen
        sleep 1; maim $HOME/Pictures/$(date +%s)-screenshot.png
        ;;
    $case3) # Scrot the active window
        sleep 1; maim -i $(xdotool getactivewindow) $HOME/Pictures/$(date +%s)-screenshot.png
        ;;
esac

