#!/bin/bash

sleep 3.0
# Number of repetitions
repeat_count=1250

for ((i=1; i<=repeat_count; i++))
do
    # Use a single line to simulate Alt+Shift+I
    dotool << EOF
key alt+shift+i
key alt+t
EOF
    sleep 5.0
    dotool << EOF
key alt+t
EOF

    # Sleep to make the script easier to observe (adjust as needed)
    sleep 0.5
done
