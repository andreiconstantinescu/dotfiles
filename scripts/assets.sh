#!/bin/sh

printf "%s\n\n"  "Copying extra assets."

cp -rv ../assets/.config ~
cp -rv ../assets/.ssh ~
cp -rv ../assets/fonts/*.* ~/Library/Fonts/
cd ../
cp -rv ../assets/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

printf "%s\n"  "Copied extra assets."
