#!/bin/bash

lock=""
down=""
reboot=""
shutdown=""

options="$shutdown\n$reboot\n$down\n$lock"

chose_option="$(echo -e "$options" | rofi -dmenu -p "Already leaving?" -hide-scrollbar -theme solarized_alternate -lines 1 -columns 4 -location 2 -padding 20 -width 15 -dpi 0 -font "Font Awesome 5 30")"

case $chose_option in
    $shutdown)
        shutdown now
        ;;
    $down)
        systemctl suspend
        ;;
    $reboot)
        reboot;;
    $lock)
        betterlockscreen -l dimblur #install betterlockscreen!
        ;;
esac
