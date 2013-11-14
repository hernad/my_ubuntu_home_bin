#!/bin/bash

cat /sys/class/backlight/intel_backlight/brightness
sudo sh -c "echo 930 > /sys/class/backlight/intel_backlight/brightness"
cat /sys/class/backlight/intel_backlight/brightness


