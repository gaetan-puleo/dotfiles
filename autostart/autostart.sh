
#auto detect monitors
#autorandr --change --force & 

nixGL picom -b --experimental-backends & 

bash ~/dotfiles/scripts/polybar/launch-bars.sh & 

feh --no-fehbg --bg-fill '/home/gaetan/.config/wallpaper/tokyo-night-girl.jpg' &

# keyboard
setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl && xmodmap ~/.Xmodmap &



