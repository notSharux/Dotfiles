#!/bin/sh

# Start ethernet
dhcpcd &
slstatus &
picom &
nitrogen --restore &
xrdb ~/.Xresources &
lxsession &
# setxkbmap de &
# xsetroot -cursor_name left_

# Loop
while true ; do
    dwm >/dev/null 2>&1
done


exec dwm

