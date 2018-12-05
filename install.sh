#!/bin/sh

echo "Initialisation started..."

echo "sudo powers needed."
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

./defaults/macos.sh

./homebrew/install.sh $1

./configs/atom.sh

./configs/itemr2/config.sh

cp .gitconfig ~
cp .gitignore.global ~

cp -rv .config ~
cp -rv .atom ~
cp -rv .ssh ~
cp -rv fonts/*.* ~/Library/Fonts/

echo "All done!.\n"
