#!/bin/bash

# Get the current date in YYYY-MM-DD format
current_date=$(date +"%Y-%m-%d")
year=$(date +"%Y")
month=$(date +"%m")

# Use the current date as a variable with the tail command
# Example: tail a log file that includes the current date in its name
#tail -f ~/repository/Notes/03\ Record/$year/$month/$current_date.md
tail -f ~/repository/Notes/04\ Ledger/wardoflores.ledger

