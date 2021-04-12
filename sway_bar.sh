#!/bin/sh
loadavg_5min=$(cat /proc/loadavg | awk -F ' ' '{print $2}')
mem=$(free -h | awk '/Mem/{print $3}')

battery_charge=$(upower --show-info $(upower --enumerate | grep 'BAT') | egrep "percentage" | awk '{print $2}')

if [ $(pamixer --get-mute) = false ]; then
    volume=$(pamixer --get-volume)%
else
    volume="--%"
fi

if [ $(pidof transmission-daemon) ]; then
    trans="⇆ |"
fi

ip=$(ip route get 1.1.1.1 | awk '{print $7}')

date_time=$(date +'%a %-d/%-m [%V] %-I:%M %p')

echo "${trans} $ip | $loadavg_5min $mem | vol $volume | bat $battery_charge | $date_time|"

# http://www.amp-what.com/unicode/search/computer
# http://panmental.de/symbols/info.htm
# https://github.com/FLYBYME/node-transmission
