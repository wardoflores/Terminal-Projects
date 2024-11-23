#!/bin/bash

# Get the current date in YYYY-MM-DD format
current_date=$(date +"%Y-%m-%d")
year=$(date +"%Y")
month=$(date +"%m")

# Get the current time in HH:MM format
current_time=$(date +"%H:%M")

# Define the file path based on the current date
file_path=~/repository/Obsidian-Personal-Vault/03\ Record/$year/$month/$current_date.md

# Ensure the directory exists
mkdir -p ~/repository/Obsidian-Personal-Vault/03\ Record/$year/$month

# Check if arguments are passed
if [ $# -gt 0 ]; then
    # Use the first argument as the text
    user_input="$*"
else
    # Prompt the user for text input
    read -p "Enter your text: " user_input
fi

# Check if the current timestamp exists in the file
if grep -q "^$current_time$" "$file_path" 2>/dev/null; then
    # Append to the existing timestamp
    sed -i "/^$current_time$/!b;n;s|$| $user_input|" "$file_path"
    echo "Appended text to the existing timestamp ($current_time) in $file_path"
else
    # Add a new timestamp and the user input
    echo -e "$current_time\n$user_input\n" >> "$file_path"
    echo "Timestamp ($current_time) and text appended to $file_path"
fi
