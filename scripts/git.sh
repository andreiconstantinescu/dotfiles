#!/bin/sh

printf "%s\n\n" "Configuring global git settings."

cp ./assets/.gitfiles/.gitconfig ~
cp ./assets/.gitfiles/.gitignore.global ~

printf "%s\n" "Configured global git settings."
