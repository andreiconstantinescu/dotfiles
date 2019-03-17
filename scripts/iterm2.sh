#!/bin/sh

printf "%s\n\n" "Configuring iterm2 and fish shell."

# Remove annoying shell last login message.
cp -rv ../assets/.iterm2/.hushlogin ~
printf "%s\n" "Configured iterm2 and fish shell."
