#auto detect monitors
autorandr --change & 

~/.fehbg &

# exec_always --no-startup-id feh --bg-fill ~/.config/wallpaper/tokyo-night-girl.jpg
picom -b & 
bash ~/.config/polybar/scripts/launch-bars.sh & 

# keyboard

setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl && xmodmap ~/.Xmodmap &
sxhkd &

