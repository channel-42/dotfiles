setxkbmap de
xrdb -load ~/.Xresources
xset s on && xset s 300 &
xset r rate 400 80 & 
xss-lock mantablockscreen &
unclutter & 
prime-offload &
sxhkd &
exec bspwm
sudo prime-switch
