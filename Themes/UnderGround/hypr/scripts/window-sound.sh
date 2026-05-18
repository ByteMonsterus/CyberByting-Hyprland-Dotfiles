#!/bin/bash

SOCKET="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

socat -U - UNIX-CONNECT:"$SOCKET" | while read -r line; do
    case "$line" in
        *openwindow*)
            mpv ~/.config/hypr/sounds/Open-Window.mp3 --no-video --volume=70 &
            ;;
    esac
done
