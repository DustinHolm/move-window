#!/bin/bash

if [ $# != 0 ]
then
  gdbus call \
  --session \
  --dest org.gnome.Shell \
  --object-path /org/gnome/Shell \
  --method org.gnome.Shell.Eval "      
    let current = global.workspace_manager.get_active_workspace_index()
    if ('$1' == 'left' && current != 0) {
      global.display.focus_window.change_workspace_by_index(current - 1, 0)
    } else if ('$1' == 'right') {
      global.display.focus_window.change_workspace_by_index(current + 1, 0)
    }
  "
fi

