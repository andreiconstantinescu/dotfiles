#!/bin/sh
printf "%s\n\n"  "Install brew common packages:"
cd ../lib/homebrew/common
brew bundle
printf "%s\n"  "Common brew packages installed."

printf "%s\n"  "Configuring the fish shell."
if ! grep --quiet $(which fish) /etc/shells; then
  sudo sh -c "printf "%s\n"  $(which fish) >> /etc/shells"
fi
chsh -s $(which fish)
printf "%s\n"  "Fish shell configured."

cd ../../../scripts
printf "%s\n"  "Successfully brewed common tools."
