#!/bin/bash

rofi_command="rofi -theme themes/layout-scrot.rasi"

# Each of the icon is a selectable element
options=$'\n\n'

chosen="$(echo "$options" | $rofi_command -dmenu)"
case $chosen in
    ) # Tabbed mode
        i3-msg layout tabbed
        ;;
    ) # Split mode (tiled horizontally)
        i3-msg layout toggle split
        ;;
    ) # Stacking mode
        i3-msg layout stacked
        ;;
esac

