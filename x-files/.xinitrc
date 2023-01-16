#!/bin/sh

userresources="$HOME/.Xresources"

$HOME/dots/xrandr.sh &

for f in /etc/X11/xinit/xinitrc.d/*.sh; do
  source "$f"
done

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

exec i3
