#!/bin/sh

printf "%s\n\n"  "Configuring MacOS."

cd ./scripts

../lib/defaults/macos.sh $1

cd ../

printf "%s\n"  "MacOS configured successfully."
