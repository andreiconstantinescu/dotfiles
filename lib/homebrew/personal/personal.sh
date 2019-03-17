#!/bin/sh
printf "%s\n"  "Install brew personal packages:"
cd ../lib/homebrew/personal
brew bundle

cd ../../../scripts

printf "%s\n"  "Successfully brewed personal packages."
