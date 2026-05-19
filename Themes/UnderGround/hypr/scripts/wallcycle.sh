#!/bin/bash

DIR="$HOME/.config/wallpaper/mov/"

while true; do
    VIDEO=$(find "$DIR" -type f | shuf -n 1)

    pkill mpvpaper

    mpvpaper -o "no-audio loop" '*' "$VIDEO" &
    
    eww relaod

    sleep 300
done
