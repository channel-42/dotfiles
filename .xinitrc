xrandr --output DP-2 --mode 3440x1440 --rate 100      
sudo liquidctl set fan speed 33 25 34 50 40 80 45 100 
sudo liquidctl set pump speed 33 50 34 65 40 80 45 100 
xset s on && xset s 300 &
xss-lock mantablockscreen &
setxkbmap de
xrdb -load ~/.Xresources
nvfancontrol &
sxhkd &
exec bspwm 
