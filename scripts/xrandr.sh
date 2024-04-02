#!/bin/bash

dell  = DisplayPort-2
wacom = DisplayPort-1

xrandr --output $dell --primary
xrandr --output $dell --left-of $wacom
xrandr --output $wacom --scale 2x2
