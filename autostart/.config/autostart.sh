
#auto detect monitors
autorandr --change & 

bash ~/.fehbg &

# exec_always --no-startup-id feh --bg-fill ~/.config/wallpaper/tokyo-night-girl.jpg

# keyboard
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl && xmodmap ~/.Xmodmap &

sxhkd &

picom -b --experimental-backends & 
bash ~/.config/polybar/scripts/launch-bars.sh & 

