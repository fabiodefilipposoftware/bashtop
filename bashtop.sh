#!/bin/bash

# Create a new session tmux called 'desktop' in background
tmux new-session -d -s desktop

# Run xstarter in the first tab (on left)
tmux send-keys -t desktop:0.0 'xstarter' C-m

# Split the window vertically in two tabs
tmux split-window -h -t desktop:0.0

# Run ranger in the second tab (on right)
tmux send-keys -t desktop:0.1 'ranger' C-m

# Connect the terminal session corrente
tmux attach-session -t desktop
