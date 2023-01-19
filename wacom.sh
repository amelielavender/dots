#!/bin/env bash
#needs to be restarted if you unplug and replug the device.
#see https://github.com/linuxwacom/xf86-input-wacom/wiki/xorg.conf.d for a hotplug configuration

#get name of devices from `xsetwacom list`
TAB="Wacom Cintiq Pro 13"

PEN="$TAB Pen stylus"
PAD="$TAB Pad pad"
ERASER="$TAB Pen eraser"
TOUCH="$TAB Touch Finger touch"

#for nvidia gpus, need to use HEAD-0, HEAD-1 as display names instead of the name under xrandr. just headass tbh
MONITOR="HEAD-1"

#pen
xsetwacom set "$PEN" MapToOutput $MONITOR 
xsetwacom set "$PEN" Button 2 3
xsetwacom set "$PEN" Button 3 2

#eraser
xsetwacom set "$ERASER" MapToOutput $MONITOR
xsetwacom set "$ERASER" Button 2 3
xsetwacom set "$ERASER" Button 3 2

#touch
xsetwacom set "$TOUCH" touch off

echo "settings applied"
