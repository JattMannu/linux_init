#!/usr/bin/env bash

# sudo apt-get install -y wmctrl

#wmctrl -a chromium


id=custom0
dconf reset -f "/org/mate/desktop/keybindings/$id/"
#dconf write /org/mate/desktop/keybindings/custom0/command "'chromium-browser'"
dconf write /org/mate/desktop/keybindings/$id/action "'sh -c ~/Documents/linux_init/chromium.sh'"
dconf write /org/mate/desktop/keybindings/$id/binding "'<Alt>c'"
dconf write /org/mate/desktop/keybindings/$id/name "'Open Chromium Web Browser'"



id=custom1
dconf reset -f "/org/mate/desktop/keybindings/$id/"
dconf write /org/mate/desktop/keybindings/$id/action "'mate-open'"
dconf write /org/mate/desktop/keybindings/$id/binding "'<Alt>e'"
dconf write /org/mate/desktop/keybindings/$id/name "'Open my computer'"

id=custom2
dconf reset -f "/org/mate/desktop/keybindings/$id/"
#dconf write /org/mate/desktop/keybindings/custom1/command "'chromium-browser'"
dconf write /org/mate/desktop/keybindings/$id/action "'sh -c ~/Documents/linux_init/tilix.sh'"
dconf write /org/mate/desktop/keybindings/$id/binding "'<Alt>t'"
dconf write /org/mate/desktop/keybindings/$id/name "'Open Tilix'"

echo "done!"

# https://askubuntu.com/questions/597395/how-to-set-custom-keyboard-shortcuts-from-terminal
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'move-window'"
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Primary><Alt>Page_Down'"
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'/usr/local/bin/move-window.sh'"


# $(wmctrl -a chromium) ||  test $? -eq 0 || chromium-browser

# xinput set-prop 12 "libinput Scroll Method Enabled" 0, 0, 1