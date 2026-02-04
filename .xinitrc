#!/bin/sh


#fix screen 2
sh /home/aiden/.config/screen.sh

#reverse scroll with touchpad
xinput set-button-map 13 1 2 3 5 4 7 6
xinput set-prop 11 "libinput Natural Scrolling Enabled" 1

#wallpaper
feh --bg-scale /home/aiden/.config/bg/bg1.jpg /home/aiden/.config/bg/bg2.jpg
export GTK_THEME=Adwaita:dark
#nvidia-optimus
/usr/bin/prime-offload

#keyring
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

exec i3
