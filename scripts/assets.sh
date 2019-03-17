#!/bin/sh

printf "%s\n\n"  "Copying extra assets."

cp -rv ./assets/.config ~
cp -rv ./assets/.ssh ~
cp -rv ./assets/fonts/*.* ~/Library/Fonts/

printf "%s\n"  "Copied extra assets."
