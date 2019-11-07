export DISPLAY=:0
xset r rate 200
xrdb -load ~/.Xresources
xmodmap ~/.Xmodmap
~/.screenlayout/default.sh

STYLUS_ID=xsetwacom --list | grep STYLUS | awk '{ print $7 }'
xsetwacom --set $STYLUS_ID MapToOutput "DisplayPort-0"

MOUSE_ID=xinput list | grep DeathAdder | head -n 1 | awk '{ print $7 }' | cut -d= -f
xinput set-prop $MOUSE_ID "libinput Accel Speed" -0.6
xinput set-prop $MOUSE_ID "Coordinate Transformation Matrix" 1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000
xinput set-prop 9 "libinput Accel Speed" -0.6
xinput set-prop 9 "Coordinate Transformation Matrix" 1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000

setxkbmap us

# ----------- custom xrandr
xrandr --output HDMI-A-0 --left-of DisplayPort-0

exec i3
