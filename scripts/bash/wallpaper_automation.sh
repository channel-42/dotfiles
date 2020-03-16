#!/bin/bash
#Channel_42
#This script selects and applies a random wallaper from the ~/Pictures/Wallpapers Directory

DIR="$HOME/Pictures/Wallpapers/"   #Wallpaper Directory
cd "$DIR"               #change to wpp dir
WALLS=( $(ls) )         #create array with all wallpapers
RANDOM=$$$(date +%s)    #generate random number

selectedwall=${WALLS[$RANDOM % ${#WALLS[@]} ]}  #select a random wallpaper

final="${DIR}${selectedwall}"   #join strings for final command

feh --bg-fill "$final"         #set wallpaper
