xrandr --output DP-2 --mode 3440x1440 --rate 100      
sudo liquidctl set fan speed 38 25 40 50 45 80 50 100 
sudo liquidctl set pump speed 38 50 40 65 45 80 50 100 
setxkbmap de
xrdb -load ~/.Xresources
sxhkd &
exec bspwm 
