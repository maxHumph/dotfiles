#!/bin/sh

xset -b 
xset r rate 300 40

setxkbmap -layout gb
setxkbmap -option ctrl:swapcaps

~/.local/bin/statusbar &
exec dbus-launch --exit-with-session dwm
