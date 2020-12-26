#!/bin/bash

# Terminate already running bar instances
killall -q polybar

cool=$(liquidctl set sync color fading 002b36 268bd2 2aa198 657b83 6c71c4 859900 93a1a1 b58900)
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

sleep 1     
#mot sleeping may cause issues with multiple monitors

#launch polybar
polybar wm -r &
polybar music -r &
polybar info -r &
sleep 0.1
polybar wm_outer -r &
polybar music_outer -r &
polybar info_outer -r &


