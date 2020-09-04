printf "\nInstall Node and yarn"

cp -nrv ./assers/.tool-versions ~

asdf plugin-add yarn
asdf plugin-add nodajs

asdf install


printf "\nFinish install Node and yarn"