#!/bin/bash

if [[ `uname` != "Linux" ]]; then
    echo "The theme export script is for Linux only and requires the gnome tool dconf"; exit 1
fi

if ! [ -x "$(command -v dconf)" ]; then
    echo "The theme export script requires the gnome tool dconf"; exit 1
fi

# credits:
# - theme: https://github.com/arcticicestudio/nord-gnome-terminal
# - import/export commands: https://dimitar.me/how-to-export-import-gnome-terminal-profiles/
dconf dump /org/gnome/terminal/legacy/profiles:/:e3766789-f48c-405e-8311-80105011b1e9/ > nord.dconf
dconf dump /org/gnome/terminal/legacy/profiles:/:a84874c3-6c52-4c9c-87c7-b9a8c2f15220/ > nord-sc-font.dconf
dconf dump /org/gnome/terminal/legacy/profiles:/:fa2eb945-54a6-4458-9812-fe6545450e99/ > nord-ssh.dconf
