#!/usr/bin/env bash
# ----------------------------------------------------------
# Author:          xearonet
# Modified:        10.05.2023
# Version:         1.0
# Desc:            Reset USB port
# ----------------------------------------------------------

set -euo pipefail

# shellcheck disable=SC2046
if [ $(id -u) -ne 0 ]; then
    echo "You must be ROOT to run this script"
    exit 1
fi

# for USB3.0 port use "4-1"

echo "2-1" > /sys/bus/usb/drivers/usb/unbind
sleep 1
echo "2-1" > /sys/bus/usb/drivers/usb/bind
