#!/bin/sh

export FLAG=-p

printf "%s\n\n"  " Setup"

printf "%s\n"  "Admin powers needed."
sudo -v -E

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Configure MacOS settings.
./scrips/defaults.sh $1

# Install homebrew and apps.
./scripts/homebrew.sh $1

# Configure iTerm2.
./scripts/iterm2.sh

# Configure SSH.
./scripts/git.sh

# Configure VS Code.
./scripts/vscode.sh

# Copy extra assets
./scripts/assets.sh

printf "%s\n"  "Setup Finished!"

printf "%s\n"  "Press any key to restart..."
read -p  "" -n1 -s

sudo reboot
