#!/bin/bash

OPTIONS="󰌪  Power Saver
󰾆  Balanced
󰓅  Performance"

CHOICE=$(echo -e "$OPTIONS" | wofi --dmenu --prompt "Power Profile" --gtk-dark)


case "$CHOICE" in
    *Power\ Saver*)
        powerprofilesctl set power-saver
        notify-send "󰌪 Power Saver Enabled"
        ;;
    *Balanced*)
        powerprofilesctl set balanced
        notify-send "󰾆 Balanced Mode Enabled"
        ;;
    *Performance*)
        powerprofilesctl set performance
        notify-send "󰓅 Performance Mode Enabled"
        ;;
esac

