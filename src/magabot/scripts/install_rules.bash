#!/bin/bash

echo ""
echo "This script copies a udev rule to /etc to facilitate bringing"
echo "up the magabot node. It creates the /dev/ttyMagabot /dev/ttyMagabotInertial symlinks"
echo ""

sudo cp `rospack find magabot`/../../udev-rules/10-usb-serial.rules /etc/udev/rules.d
sudo udevadm control -R
sudo udevadm trigger

