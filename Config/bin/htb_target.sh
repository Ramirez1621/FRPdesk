#!/bin/sh

ip_address=$(cat ~/.config/bin/target/target.txt | awk '{print $1}')
machine_name=$(cat ~/.config/bin/target/target.txt | awk '{print $2}')

if [ $ip_address ] && [ $machine_name ]; then
    echo "%{F#e51d0b}什 %{F#ffffff}$ip_address%{u-} - $machine_name"
elif [ $(cat ~/.config/bin/target/target.txt | wc -w) -eq 1 ]; then
        echo "%{F#e51d0b}什%{F#ffffff} $ip_address"
else
    echo "%{F#e51d0b}ﲅ %{u-}%{F#ffffff} No target"
fi
