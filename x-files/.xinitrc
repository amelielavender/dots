#!/bin/sh

export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export GTK_THEME=Catppuccin-Latte-Standard-Flamingo-Light
userresources="$HOME/.Xresources"

$HOME/dots/xrandr.sh &

for f in /etc/X11/xinit/xinitrc.d/*.sh; do
  source "$f"
done

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

udiskie &
/usr/bin/polkit-dumb-agent &

exec i3
