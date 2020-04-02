#!/bin/bash
#edited version of Luke Smith's compiler.sh scripz

#get main file location variables
file=$(readlink -f "$1")
dir=$(dirname "$file")
base="${file%.*}"

#goto files dir
cd "$dir" || exit

#do the followeing depending on file's suffix
case "$file" in
    *\.md) pandoc "$file" --pdf-engine=xelatex -V fontsize=10pt -V mainfont="Noto Sans" -V monofont="Source Code Pro" -o "$base".pdf && [[ 'echo $?' ]] || read -p "Press enter to continue";;
    *\.py) python3 "$file" && sleep 3;;
    *\.c) gcc "$file" -Wall -o "$base".out && [[ 'echo $?' ]] && "$base".out && sleep 2 || read -p "Press enter to continue" ;; #if gcc returns 0 then exec, else show compile error and await user input
    *\.sh) bash "$file" && [[ 'echo $?' ]] && sleep 2 || read -p "Press enter to continue" ;;
    *\.tex) xelatex "$file" && [[ 'echo $?' ]] || read -p "Press enter to continue";; 
    *) 
esac
