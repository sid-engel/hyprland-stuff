# ~/.config/hypr/scripts/toggle-float-center.sh
#!/bin/bash

# Toggle floating
hyprctl dispatch togglefloating active

# If now floating, center it and set a nice size
if hyprctl activewindow | grep -q "floating: 1"; then
    hyprctl dispatch centerwindow
    hyprctl dispatch resizewindowpixel exact 70% 70%,active
fi
