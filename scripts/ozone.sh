#!/bin/bash

real_home=$(eval echo "~$SUDO_USER") 
backup_dir="$real_home/.config/desktop-backups"

deskPath="/usr/share/applications"

desktop_files=(
    "discord.desktop"
    "obsidian.desktop"
    "notion.desktop"
)

for desktop_file in "${desktop_files[@]}"; do
    # Check if the file exists
    if [[ ! -f "$deskPath/$desktop_file" ]]; then
        echo "Error: File not found: $desktop_file"
        continue
    fi

    backup_file="$backup_dir/${desktop_file}.bak"

    # Create a backup of the file
    if [[ -f "$backup_file" ]]; then
        echo "Warning: Backup file already exists: ${desktop_file}.bak. Skipping backup."
    else
        cp "$deskPath/$desktop_file" "$backup_file"
        if [[ $? -ne 0 ]]; then
            echo "Error: Failed to create backup for $desktop_file"
            continue
        fi
        echo "Created backup: ${desktop_file}.bak"
    fi

    # Modify the Exec line to add Wayland flags
    if sed -i -E 's|^(Exec=[^ ]+)(.*)$|\1 --enable-features=UseOzonePlatform --ozone-platform=wayland\2|' "$deskPath/$desktop_file"; then
        echo "Successfully modified $desktop_file"
    else
        echo "Error: Failed to modify $desktop_file"
    fi
done
