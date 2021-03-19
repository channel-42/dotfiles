#!/bin/bash
export MANPAGER='nvim +Man!'
case $1 in
    "-r")
        man -k . | awk '{print $1}' | shuf | head -1 | xargs urxvt -e man;;
    *)
        man -k . | awk '{print $1}' |rofi -dmenu -p "search mans: " -theme sidebar | xargs urxvt -e man;;
esac
