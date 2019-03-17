#!/bin/sh
printf "%s\n"  "Install brew common packages:"
cd ../lib/homebrew/common
brew bundle

printf "%s\n"  "- Fish it."
if ! grep --quiet $(which fish) /etc/shells; then
  sudo sh -c "printf "%s\n"  $(which fish) >> /etc/shells"
fi
chsh -s $(which fish)

cd ../../../scripts
printf "%s\n"  "Successfully brewed common tools."
