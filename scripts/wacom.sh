#!/bin/env bash
#needs to be restarted if you unplug and replug the device.
#see https://github.com/linuxwacom/xf86-input-wacom/wiki/xorg.conf.d for a hotplug configuration

#get name of devices from `xsetwacom list`
tab="Wacom Cintiq Pro 13"

pen="$tab Pen stylus"
pad="$tab Pad pad"
eraser="$tab Pen eraser"
touch="$tab Touch Finger touch"

#for nvidia gpus, need to use HEAD-0, HEAD-1 as display names instead of the name under xrandr. just headass tbh
monitor="HEAD-1"

#pen
xsetwacom set "$pen" MapToOutput $monitor 
xsetwacom set "$pen" Button 2 3
xsetwacom set "$pen" Button 3 2

#eraser
xsetwacom set "$eraser" MapToOutput $monitor
xsetwacom set "$eraser" Button 2 3
xsetwacom set "$eraser" Button 3 2

#touch
xsetwacom set "$touch" touch off

echo "settings applied"
