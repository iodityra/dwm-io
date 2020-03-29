#!/bin/bash
compton &
sleep 1 &
discord &
nitrogen --restore &
unclutter -idle 3 &
while true; do
	if [ $(cat /sys/class/power_supply/BAT0/status) == "Charging" ]; then
		status0="Charging"
	else
		status0="Discharging"
	fi
	if [ $(cat /sys/class/power_supply/BAT1/status) == "Charging" ]; then
		status1="Charging"
	else
		status1="Discharging"
	fi
	xsetroot -name "$(cat /sys/class/power_supply/BAT0/capacity)% $(echo $status0) :: $(cat /sys/class/power_supply/BAT1/capacity)% $(echo $status1) :: `date +"%e, %b %Y - %R:%S"`"
	sleep 0.1s
done &
