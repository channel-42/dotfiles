#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

sleep 1     
#mot sleeping may cause issues with multiple monitors

#launch polybar
polybar wm -r & 
if [[ $(pgrep -f mpd) ]];then
    polybar music -r & 
fi
polybar info -r & 

