#!/bin/sh

# default arch init	scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

intern=eDP-1
extern=HDMI-1

if xrandr | grep "$extern disconnected"; then
	xrandr --output "$extern" --off --output "$intern" --auto
else
	xrandr --output "$intern" --off --output "$extern" --auto
fi

# duplicate screen
# xrandr --output "$extern" --same-as "$intern"

# only choose 1 window manager
exec qtile start
# exec i3
# exec bspwm
# startxfce4
