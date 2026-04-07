#!/bin/bash

chosen=$(printf "  Lock\n  Logout\n  Suspend\n  Reboot\n  Shutdown" | \
    wofi --dmenu \
         --prompt "Sistema..." \
         --width 700 \
         --height 400 \
         --location center \
         --allow-images)

case "$chosen" in
    "  Lock")
        hyprlock
        ;;
    "  Logout")
        hyprctl dispatch exit
        ;;
    "  Suspend")
        systemctl suspend
        ;;
    "  Reboot")
        systemctl reboot
        ;;
    "  Shutdown")
        systemctl poweroff
        ;;
esac
