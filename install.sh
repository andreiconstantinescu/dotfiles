#!/bin/sh

echo "\nLet me do some magic.\n"

./defaults/osx.sh

./homebrew/install.sh

./configs/atom.sh
./configs/keybase.sh

cp .gitconfig ~
cp .gitignore.global ~

cp -rv .config ~
cp -rv .atom ~
cp -rv .ssh ~
cp -rv .gnupg ~
cp -rv fonts/*.* ~/Library/Fonts/

echo " All done!.\n"
