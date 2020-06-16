#!/bin/bash
#show rofi list of emojis and copy output to clipboard

cat $HOME/.local/share/emoji | cut -d";" -f1 | rofi -dmenu -lines -3 -eh 2 -width 20 -font "Apple Color Emoji 15" -theme /usr/share/rofi/themes/sidebar.rasi | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
