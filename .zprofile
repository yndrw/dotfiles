#optimus-manager
if \systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]];
then 
    doas /usr/bin/prime-switch
fi

#wine
touch /tmp/fontsmoothing.reg
echo 'REGEDIT4\n\n[HKEY_CURRENT_USER\\Control Panel\\Desktop]\n"FontSmoothing"="2"\n"FontSmoothingOrientation"=dword:00000001\n"FontSmoothingType"=dword:00000002\n"FontSmoothingGamma"=dword:00000578\nEOF' > /tmp/fontsmoothing.reg
WINE=${WINE:-wine} WINEPREFIX=${WINEPREFIX:-$HOME/.wine} $WINE regedit /tmp/fontsmoothing.reg 2> /dev/null

