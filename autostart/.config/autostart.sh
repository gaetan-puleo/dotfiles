#auto detect monitors
autorandr --change & 

bash ~/.fehbg &

# exec_always --no-startup-id feh --bg-fill ~/.config/wallpaper/tokyo-night-girl.jpg
picom -b --experimental-backends & 
bash ~/.config/polybar/scripts/launch-bars.sh & 

# keyboard


sxhkd &
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl && xmodmap ~/.Xmodmap &

