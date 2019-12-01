#!/bin/bash
compton &
sleep 1 &
discord &
#spotify &
nitrogen --restore &
bin/res 1080&
sudo chmod 777 /sys/devices/pci0000:00/0000:00:02.0/drm/card*/card*-eDP-1/intel_backlight/brightness &
chmod 777 /sys/devices/pci0000:00/0000:00:02.0/drm/card*/card*-eDP-1/intel_backlight/brightness &
while true; do
	xsetroot -name "` date +"%e, %b %Y - %R" `"
	sleep 1m
done &
#dwmbar &
#dunst &
