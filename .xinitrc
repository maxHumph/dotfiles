#!/bin/sh
xset -b 
xset r rate 300 50
~/.local/bin/statusbar &
exec dwm
