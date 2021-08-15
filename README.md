# move-window
A small utility function for Gnome using Wayland.

This solves a pet peeve of mine: Switching between workspaces with 3 fingers is fun, but moving a window to a different workspace needs either a shortcut or a trip through the activities screen. I recommend using [libinput-gestures](https://github.com/bulletmark/libinput-gestures) and binding the 4 finger gestures to this script.

Example call in the libinput-gestures.conf (with move-window.sh in ~/.local/bin):

    gesture swipe left 4	move-window.sh left
    gesture swipe right 4	move-window.sh right
