#!/bin/sh


#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[ ! -s ~/.mpd/pid ] && mpd

setxkbmap -model pc104 -layout jp -variant ,dovorak
xrdb ~/.Xresources &

redshift -l 40:140 &

sxhkd &

urxvtd &

numlockx &

nitrogen --restore&

conky &

xcompmgr -c &

exec spectrwm
