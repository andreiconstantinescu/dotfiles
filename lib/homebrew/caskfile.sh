#!/bin/sh

printf "%s\n\n"  "- Brewing GUI apps."

printf "%s\n"  "- SAFE packages."

brew cask install 1password
brew cask install alfred
brew cask install atom
brew cask install Caskroom/versions/google-chrome-canary
brew cask install spectacle
brew cask install vlc
brew casm install nosleep
brew cask install docker
brew cask install captain
brew cask install slack

if [[ $1 != $FLAG ]]; then
printf "%s\n"  "- NSFW packages."

brew cask install transmission
brew cask install telegram
brew cask install caskroom/drivers/logitech-options
brew cask install messenger

fi

printf "%s\n"  "- Successfully brewed GUI apps."
