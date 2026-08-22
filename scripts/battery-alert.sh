#!/bin/sh

BATTERY="BAT0"
while true; do
    capacity=$(cat /sys/class/power_supply/$BATTERY/capacity)
    status=$(cat /sys/class/power_supply/$BATTERY/status)

    if [ "$status" = "Discharging" ]; then
        if [ "$capacity" -le 40 ]; then
            notify-send -u normal "test" "battery is 40"
            # speaker-test -l 1 -t sine -f 1000 >/dev/null 2>&1
        elif [ "$capacity" -le 30 ]; then
            notify-send -u critical "test" "battery is 30"
        fi
    elif [[ "$status" = "Charging" && "$capacity" -gt 78 ]]; then
        notify-send -u normal "bro" "battery full so plug that shit off"
    fi
    sleep 60
done
