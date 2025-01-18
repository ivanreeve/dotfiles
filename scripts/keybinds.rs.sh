#!/bin/sh

show_log(){
    echo -e "[LOG] restored $1"
}

dconf load /org/gnome/desktop/wm/keybindings/ < gnome-keybindings-backup.dconf
dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ < custom-keybindings-backup.dconf
