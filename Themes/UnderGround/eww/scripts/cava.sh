#!/bin/bash
while true; do
  if read -r line < /tmp/cava.fifo; then
    echo "$line"
  fi
done
