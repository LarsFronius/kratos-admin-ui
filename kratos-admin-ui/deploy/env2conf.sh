#!/bin/sh
##
# Usage: env2conf dir filename
# env2conf.sh public/config.json

REVERSE_PROXY_SETTINGS="${REVERSE_PROXY:=false}"

mkdir -p "$(dirname "$1")" && touch "$1"
echo '{' >"$1"
echo "   \"reverseProxy\": ${REVERSE_PROXY_SETTINGS}" >> "$1"
echo '}' >> "$1"
