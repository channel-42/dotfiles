setxkbmap de
xrdb -load ~/.Xresources
xset s on && xset s 300 &
xset r rate 400 80 & 
xss-lock mantablockscreen &
unclutter & 
sxhkd &
exec bspwm
