#!/usr/bin/env bash
set -e
TAG="cosmic-delta-clever-garden"
LIB="wax-awning.a"
URL="https://github.com/cozyfabric/libfreshdrum/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
