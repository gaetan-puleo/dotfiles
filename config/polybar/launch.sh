#!/usr/bin/zsh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

export WLAN_INTERFACE

WLAN_INTERFACE=$(ip link show | grep wlp | sed 's/.*: \(.*\):.*/\1/')


# Launch bar1 and bar2
# polybar bar1 & polybar tray &
polybar barminimal &

echo "Bars launched..."
