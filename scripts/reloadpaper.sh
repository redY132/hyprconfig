#!/usr/bin/env bash

while true; do
	WALLPAPER_DIR="/home/redley/.config/hypr/wallpapers/"
	CURRENTWALL=$(hyprctl hyprpaper listloaded)

	WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

	hyprctl hyprpapaer reload ,"$WALLPAPER"
	hyprctl hyprpaper reload eDP-1,"$WALLPAPER"
	hyprctl hyprpaper reload DP-2,"$WALLPAPER"

	sleep 360
done
