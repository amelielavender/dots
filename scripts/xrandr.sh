#!/bin/sh

dell=DP-0
wacom=DP-2

xrandr --output $dell --primary
xrandr --output $dell --right-of $wacom
xrandr --output $wacom --scale 2x2
