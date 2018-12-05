#!/bin/sh

printf "%s\n"  "Brewing CLI tools started:"

printf "%s\n"  "- essentials."
brew install fish
brew install hub
brew install kryptco/tap/kr
brew install tree

printf "%s\n"  "- Devtools."
brew install node
brew install yarn

if [[ $1 != $FLAG ]]; then
  printf "%s\n"  "- Games and cool stuff."
  brew install cheat
  brew install cowsay
  brew install figlet
  brew install fortune
  brew install homebrew/games/nethack
  brew install sl
  brew install cmatrix
  brew install zork
fi
printf "%s\n"  "- Cleaning up the Cellar."
brew cleanup

printf "%s\n"  "- Fish it."
if ! grep --quiet $(which fish) /etc/shells; then
  sudo sh -c "printf "%s\n"  $(which fish) >> /etc/shells"
fi
chsh -s $(which fish)

printf "%s\n"  "Successfully brewed the CLI tools."
