#!/bin/bash

export XAUTHORITY=/home/matt/.Xauthority
export DISPLAY=:0.0

# Laptop lid open
if grep -q open /proc/acpi/button/lid/LID/state; then

    # External monitor connected
    if [ $(cat /sys/class/drm/card0-HDMI-A-3/status) == "connected" ]; then
        xrandr --output LVDS1 --auto --output HDMI3 --auto --left-of LVDS1
    # No external monitor
    else
        xrandr --auto
    fi

# Laptop lid closed
else

    # External monitor connected
    if [ $(cat /sys/class/drm/card0-HDMI-A-3/status) == "connected" ]; then
        xrandr --output HDMI3 --auto --output LVDS1 --off
    fi
fi

# Restart Qtile
echo restart | qshell -s /home/matt/.cache/qtile/qtilesocket.\:0.0 &> /dev/null
