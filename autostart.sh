#!/bin/bash
compton &
sleep 1 &
discord &
nitrogen --restore &
bin/res 1080 &
unclutter -idle 3 &
while true; do
	xsetroot -name "` date +"%e, %b %Y - %R" `"
	sleep 1m
done &
