#!/bin/bash

maim /tmp/screen.png  
convert -scale 10% -scale 1000% /tmp/screen.png /tmp/screen.png
i3lock -i /tmp/screen.png  
rm /tmp/screen.png  
