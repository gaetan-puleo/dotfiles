#!/bin/bash

rofi_command="rofi -theme themes/powermenu.rasi"

# Each of the icon is a selectable element
options=$'\n\n\n\n'

chosen="$(echo "$options" | $rofi_command -font "Font Awesome 5 Pro Solid 50" -dmenu)"
case $chosen in
    ) # Lock the screen
        light-locker-command -l
        ;;
    ) # Suspend
        amixer set Master mute
        light-locker-command -l && systemctl suspend 
        ;;
    ) # Shutdown the computer
        systemctl poweroff
        ;;
    ) # Reboot the computer
        systemctl reboot
        ;;
    ) # Log out of the current session
        i3-msg exit
        ;;
esac

