for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  MONITOR=$m polybar main &

  notify-send -i display "Display profile" "$MONITOR"
done

