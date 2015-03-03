set -g prefix C-a
unbind C-b

# Split window
bind | split-window -h
bind - split-window -v

# Vim bindings
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# Handle vim color scheme issues
# set -g default-terminal "xterm"
