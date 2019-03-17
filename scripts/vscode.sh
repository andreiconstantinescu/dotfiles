#!/bin/sh
printf "%s\n\n" "Installing VS Code Settings Sync extension."
code --install-extension shan.code-settings-sync
printf "%s\n\n" "Installed VS Code Settings Sync extension."
printf "%s" "Open VS Code and add the Github Token in order to sync your settings from the personal config gist."
