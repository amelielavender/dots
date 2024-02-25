#!/bin/sh

dell=DP-3
wacom=DP-2

xrandr --output $dell --primary
xrandr --output $dell --left-of $wacom
xrandr --output $wacom --scale 2x2
