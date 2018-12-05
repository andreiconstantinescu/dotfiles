
printf "%s\n\n" "Configuring iterm2 and fish shell."
# Installing iterm2 fish shell integration.
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash

# Copy custom integration.
cp -rv ../assets/.iterm2/.iterm2_shell_integration.fish ~

# Remove annoying shell last login message.
cp -rv ../assets/.iterm2/.hushlogin ~
printf "%s\n" "Configured iterm2 and fish shell."
