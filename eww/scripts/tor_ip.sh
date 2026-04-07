#!/usr/bin/env bash

# Proxy SOCKS por defecto de Tor
TOR_PROXY="socks5h://127.0.0.1:9050"

# Intenta obtener la IP pública saliendo por Tor
TOR_IP=$(curl --silent --max-time 8 --proxy "$TOR_PROXY" https://api.ipify.org 2>/dev/null)

# Si hay IP válida, mostrarla
if [[ "$TOR_IP" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "󰖂 TPN: $TOR_IP"
else
  echo "󰖂 TPN: Inactivo"
fi

