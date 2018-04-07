echo "- Brewing apps and tools."

echo "- Updating and upgrading Homebrew."
brew update
brew upgrade

echo "- Installing essentials."
brew install fish
brew install hub
brew install kryptco/tap/kr
brew install tree

echo "- Installing dev deps."
brew install heroku-toolbelt
brew install node
brew install yarn

echo "- Installing games and cool stuff."
brew install archey
brew install cheat
brew install cowsay
brew install figlet
brew install fortune
brew install homebrew/games/nethack
brew install sl

echo "- Cleaning up the Cellar."
brew cleanup

echo "- Fish it."
if ! grep --quiet $(which fish) /etc/shells; then
  sudo sh -c "echo $(which fish) >> /etc/shells"
fi
chsh -s $(which fish)

echo "Successfully brewed apps and tools.\n"
