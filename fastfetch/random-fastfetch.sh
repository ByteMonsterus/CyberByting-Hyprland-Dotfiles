#!/bin/bash

PRESET_DIR="$HOME/.config/fastfetch/presets"
LAST_FILE="/tmp/fastfetch_last"

PRESETS=($(find "$PRESET_DIR" -name "*.jsonc"))

while true; do
    PRESET=$(printf "%s\n" "${PRESETS[@]}" | shuf -n 1)

    if [[ ! -f "$LAST_FILE" ]] || [[ "$PRESET" != "$(cat "$LAST_FILE")" ]]; then
        echo "$PRESET" > "$LAST_FILE"
        break
    fi
done

fastfetch --config "$PRESET"