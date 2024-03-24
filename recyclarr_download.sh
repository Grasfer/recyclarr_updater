#!/bin/bash

today=$(date +"%Y-%m-%d")

RECYCLARR_URL="https://github.com/recyclarr/recyclarr/releases/latest/download/recyclarr-linux-x64.tar.xz"

wget "$RECYCLARR_URL" -O - | sudo tar xJ --overwrite -C /usr/local/bin

logger Recyclarr updated.

echo "Recyclarr updated ${today}." >> /var/log/recyclarr.log
