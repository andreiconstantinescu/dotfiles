#!/bin/sh

echo "\n Hey there. Never mind me, just setting up your system.\n"

./defaults/osx.sh

./homebrew/install.sh

./npm.sh

echo " Installing oh-my-zsh. (https://github.com/robbyrussell/oh-my-zsh)"
curl -L http://install.ohmyz.sh | sh
echo "zsh configured.\n"


echo " All done! Enjoy.\n"
