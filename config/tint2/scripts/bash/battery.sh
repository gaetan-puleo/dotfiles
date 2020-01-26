#!/bin/bash

# This script displays battery icon according to the charge level and charging state

# Author: Piotr Miller
# e-mail: nwg.piotr@gmail.com
# Website: http://nwg.pl
# Project: https://github.com/nwg-piotr/dotfiles/config/tint2/
# License: GPL3

# Dependencies: `acpi`

bat=$(acpi -b)
state=$(echo ${bat} | awk '{print $3}')

if [[ "$state" = "Not" ]]; then
    level=$(echo ${bat} | awk '{print $5}')
    level=${level::-1}

else
    level=$(echo ${bat} | awk '{print $4}')
    if [[ "$state" == *"Unknown"* ]]; then
        level=${level::-1}
    else
        level=${level::-2}
    fi
fi

if [[ "$bat" == *"until"* ]]; then

    if [[ "$level" -ge "95" ]]; then
        echo ~/dotfiles/config/tint2/images/icons/bat-full-charging.svg
    elif [[ "$level" -ge "75" ]]; then
        echo ~/dotfiles/config/tint2/images/icons/bat-threefourth-charging.svg
    elif [[ "$level" -ge "35" ]]; then
        echo ~/dotfiles/config/tint2/images/icons/bat-half-charging.svg
    elif [[ "$level" -ge "15" ]]; then
        echo ~/dotfiles/config/tint2/images/icons/bat-quarter-charging.svg
    else
        echo ~/dotfiles/config/tint2/images/icons/bat-empty-charging.svg
    fi
else
    if [[ "$level" -ge "95" ]]; then
        echo ~/dotfiles/config/tint2/images/icons/bat-full.svg
    elif [[ "$level" -ge "75" ]]; then
        echo ~/dotfiles/config/tint2/images/icons/bat-threefourth.svg
    elif [[ "$level" -ge "35" ]]; then
        echo ~/dotfiles/config/tint2/images/icons/bat-half.svg
    elif [[ "$level" -ge "15" ]]; then
        echo ~/dotfiles/config/tint2/images/icons/bat-quarter.svg
    else
        echo ~/dotfiles/config/tint2/images/icons/bat-empty.svg
    fi
fi
if  [[ $1 = "-l" ]]; then
    echo ${level}%
fi
