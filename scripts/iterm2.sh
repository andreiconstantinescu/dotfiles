#!/bin/sh

printf "%s\n\n" "Configuring iterm2 and fish shell."

# Remove annoying shell last login message.
cp -rv ./assets/.iterm2/.hushlogin ~

# Copy iterm2 settings to the local system.
mkdir ~/.config/iterm2
cp -rv ./assets/.iterm2/iterm2pref.plist ~/.config/iterm2/com.googlecode.iterm2.plist

printf "%s\n" "Configured iterm2 and fish shell."
