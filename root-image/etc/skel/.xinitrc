#!/bin/bash
#xcompmgr -CcfF -I-.015 -O-.03 -D6 -t-1 -l-3 -r4.2 -o.5 &
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi 
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
DEFAULT_SESSION=xmonad

# NetworkManager
(sleep 3 && /usr/bin/nm-applet --sm-disable) &

# background urxvtd for faster terms
urxvtd &
# set cursor
xsetroot -cursor_name left_ptr
# start xmonad
#exec ck-launch-session xmonad
# start awesomewm
exec ck-launch-session awesome
