#!/bin/sh

printf "%s\n\n" "Homebrew check."

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



# Install CLI tools from the brewfile.
../lib/homebrew/brewfile.sh $1

# Install apps from the caskfile.
../lib/homebrew/caskfile.sh $1

printf "%s\n"  "Homebrew apps and tool successfully installed."
