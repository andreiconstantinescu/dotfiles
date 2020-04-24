#!/bin/sh

printf "%s\n\n" "Installing Atom packages."

apm install atom-clock
apm install atom-typescript
apm install busy-signal
apm install code-time
apm install intentions
apm install linter
apm install linter-eslint
apm install linter-ui-default
apm install no-title-bar
apm install prettier-atom
apm install teletype

printf "%s\n\n" "Finished installing Atom packages."
