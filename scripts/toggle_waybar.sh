#!/usr/bin/env bash

if pgrep -x "waybar" > /dev/null; then
    killall waybar
fi
~/git/niri-dotfiles/waybar/.config/waybar/scripts/launch.sh > /dev/null 2>&1 &
# systemctl --user restart waybar.service
