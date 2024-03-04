#!/bin/sh

dell  = DisplayPort-2
wacom = DisplayPorP-1

xrandr --output $dell --primary
xrandr --output $dell --left-of $wacom
xrandr --output $wacom --scale 2x2
