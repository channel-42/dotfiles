#!/bin/bash
#Channel_42
#This script selects and applies a random wallaper from the ~/Pictures/Wallpapers Directory
#Or it searches for a user-defined file

DIR="$HOME/Pictures/Wallpapers/"   #Wallpaper Directory

case "$1" in                    #check if user has inputed request
    "")                         #if no imput, randowm wallpaper
        cd "$DIR"               #change to wpp dir
        WALLS=( $(ls) )         #create array with all wallpapers
        RANDOM=$$$(date +%s)    #generate random number
        selectedwall=${WALLS[$RANDOM % ${#WALLS[@]} ]}  #select a random wallpaper
        final="${DIR}${selectedwall}"   #join strings for final command
        ;;
    *)                          #if input, user wallpaper
        if test -f "$DIR""$1"; then #check files existance
            final="$DIR""$1"
        else
            echo "File not found"   #on error
        fi
esac

feh --bg-fill "$final" &>/dev/null    #set wallpaper; supress errors
