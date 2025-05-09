#!/usr/bin/env bash

WALLPAPER_DIR="/home/redley/.config/hypr/wallpapers/"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" | shuf -n 1)

hyprctl hyprpaper preload $WALLPAPER
hyprctl hyprpaper wallpaper eDP-1,$WALLPAPER 
hyprctl hyprpaper wallpaper DP-2,$WALLPAPER 

while true; do
    sleep 1800
	# WALLPAPER_DIR="/home/redley/.config/hypr/wallpapers/"
	CURRENTWALL=$(hyprctl hyprpaper listloaded)

    WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENTWALL")" \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" \) | shuf -n 1)

	hyprctl hyprpaper reload eDP-1,"$WALLPAPER"
	hyprctl hyprpaper reload DP-2,"$WALLPAPER"
done
