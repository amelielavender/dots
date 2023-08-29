#!/bin/sh

export WINEPREFIX="$XDG_DATA_HOME"/wine
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export GTK_THEME=rose-pine-gtk
export QT_STYLE_OVERRIDE=kvantum

userresources="$HOME/.Xresources"

$HOME/.screenlayout/test.sh &

for f in /etc/X11/xinit/xinitrc.d/*.sh; do
  source "$f"
done

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

$HOME/dots/scripts/.fehbg
udiskie &
polkit-dumb-agent &
exec i3
