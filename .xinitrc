xrandr --output DP-2 --mode 3440x1440 --rate 100      
setxkbmap de
xrdb -load ~/.Xresources
sxhkd &
exec bspwm 
