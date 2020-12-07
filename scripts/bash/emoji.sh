#!/bin/bash
#show rofi list of emojis and copy output to clipboard

cat $HOME/.local/share/emoji | cut -d";" -f1 | rofi -dmenu -eh 1 -font "Apple Color Emoji 15" -theme sidebar | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
