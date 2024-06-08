#!/usr/bin/env bash

COLORSCHEME=Cattpuccin

### AUTOSTART PROGRAMS ###
lxsession &
picom -b &
nm-applet &
volumeicon &
xsetroot -cursor_name left_ptr &
sxhkd -c ~/.config/qtile/sxhkdrc &
# nitrogen --set-scaled --restore &
nitrogen --set-scaled ~/.dotfiles/wall.jpg &
# xwallpaper --stretch $HOME/.dotfiles/wall.png &
xidlehook --not-when-audio --not-when-fullscreen --timer 1800 'systemctl suspend;i3lock -c 000000' '' &
flameshot &
redshift &
