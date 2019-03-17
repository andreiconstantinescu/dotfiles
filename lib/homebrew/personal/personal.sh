#!/bin/sh
printf "%s\n\n"  "Install brew personal packages:"
cd ../lib/homebrew/personal
brew bundle
printf "%s\n"  "Brew personal packages installed."

cd ../../../scripts

printf "%s\n"  "Successfully brewed personal packages."
