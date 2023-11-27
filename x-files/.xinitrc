#!/bin/sh

export WINEPREFIX="$XDG_DATA_HOME"/wine
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

userresources="$HOME/.Xresources"

for f in /etc/X11/xinit/xinitrc.d/*.sh; do
  source "$f"
done

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

$HOME/dots/scripts/.fehbg
udiskie &
exec i3
