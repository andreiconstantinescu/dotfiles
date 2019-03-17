#!/bin/sh

printf "%s\n\n" "Installing VS Code Settings Sync extension."
code --install-extension shan.code-settings-sync

# Grab the Github Token.
read -p "Github token for \"Settings Sync Extension\" (or leave empty if non existant): " githubToken
if [ $githubToken ]; then
  jq '."token"'=\"$githubToken\" ./assets/.vscode/syncLocalSettings.tpl.json > ~/Library/Application\ Support/Code/User/syncLocalSettings.json
fi

# Grab Gist ID, or nothing.
read -p "Github Gist ID (or leave empty if non existant): " gistId
if [ $gistId ]; then
  jq '."sync.gist"'=\"$gistId\" ./assets/.vscode/settings.tpl.json > ~/Library/Application\ Support/Code/User/settings.json
fi

printf "%s\n\n" "Installed VS Code Settings Sync extension."
