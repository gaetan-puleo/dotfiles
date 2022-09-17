
#auto detect monitors
autorandr --change --force & 

nixGL picom -b --experimental-backends & 

# bash ~/.config/scripts/polybar/launch-bars.sh & 

# feh --no-fehbg --bg-fill ~/.config/wallpaper/tokyo-night-girl.jpg &

sleep 1
# keyboard
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl && xmodmap ~/.Xmodmap &

sxhkd &

