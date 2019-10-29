#!/usr/bin/env bash

# sudo apt-get install -y wmctrl

#wmctrl -a chromium

dconf reset -f "/org/mate/desktop/keybindings/custom1/"
#dconf write /org/mate/desktop/keybindings/custom1/command "'chromium-browser'"
dconf write /org/mate/desktop/keybindings/custom1/action "'chromium-browser'"
dconf write /org/mate/desktop/keybindings/custom1/binding "'<Alt>c'"
dconf write /org/mate/desktop/keybindings/custom1/name "'Open Chromium Web Browser'"



dconf reset -f "/org/mate/desktop/keybindings/custom0/"
#dconf write /org/mate/desktop/keybindings/custom0/command "'mate-open'"
dconf write /org/mate/desktop/keybindings/custom0/action "'mate-open'"
dconf write /org/mate/desktop/keybindings/custom0/binding "'<Alt>e'"
dconf write /org/mate/desktop/keybindings/custom0/name "'Open my computer'"


dconf reset -f "/org/mate/desktop/keybindings/test0/"
dconf write /org/mate/desktop/keybindings/test0/action "'sh -c ~/t.sh'"
#dconf write /org/mate/desktop/keybindings/custom0/action "'mate-open'"
dconf write /org/mate/desktop/keybindings/test0/binding "'<Alt>a'"
dconf write /org/mate/desktop/keybindings/test0/name "'Run Custom Script'"

echo "done!"

# https://askubuntu.com/questions/597395/how-to-set-custom-keyboard-shortcuts-from-terminal
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'move-window'"
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Primary><Alt>Page_Down'"
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'/usr/local/bin/move-window.sh'"