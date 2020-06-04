#!/bin/sh

printf "%s\n\n" "Installing Atom Settings Sync extension."
apm install sync-settings

# Grab the Github Token.
read -p "Github token for \"Settings Sync Extension\" (or leave empty if non existant): " githubToken
read -p "Github Gist ID (or leave empty if non existant): " gistId

if [ $githubToken ] && [ $gistId ]; then
  contents="$(jq --arg gistId "${gistId}" --arg githubToken "${githubToken}" '(."*"."sync-settings".gistId?) |= $gistId | (."*"."sync-settings".personalAccessToken?) |= $githubToken' ./lib/atom/config.tpl.json)"
  echo $contents | json2cson --2spaces > ./assets/.atom/config.cson
fi
printf "%s\n\n" "Installing Atom Settings Sync extension."
