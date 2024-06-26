#!/bin/bash

battery() {
	BAT=$(ls /sys/class/power_supply | grep BAT | head -n 1)
	cat "/sys/class/power_supply/${BAT}/capacity"
}

battery_status() {
	BAT=$(ls /sys/class/power_supply | grep BAT | head -n 1)
	cat "/sys/class/power_supply/${BAT}/status"
}

if [[ "$1" == "--bat" ]]; then
	battery
elif [[ "$1" == "--bat-st" ]]; then
	battery_status
fi
