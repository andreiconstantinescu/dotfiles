#!/bin/sh

printf "%s\n\n" "Homebrew check."
cd ./scripts

# Install Homebrew if it's not already present.
if command -v brew >/dev/null 2>&1; then
  printf "%s\n"  "You are ready to brew."
  printf "%s\n"  "Updating and upgrading Homebrew."
  brew update
  brew upgrade
else
  printf "%s\n"  "Homebrew is installing. (http://brew.sh)"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
  printf "%s\n"  "Homebrew successfully installed."
fi

# Install common brew packages.
../lib/homebrew/common/common.sh

# Install personal brew packages.
if [ $1 ] && [ $1 == $FLAG ]; then
  ../lib/homebrew/personal/personal.sh
fi

brew cleanup
cd ../
printf "%s\n"  "Homebrew apps and tool successfully installed."
