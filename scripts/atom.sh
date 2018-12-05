#!/bin/sh

printf "%s\n\n"  "Atom time."
printf "%s\n"  "- Installing atom packages."

apm install atom-ide-debugger-node
apm install atom-ide-ui
apm install base16-ocean-dark-spacegray
apm install busy-signal
apm install case-switch
apm install file-icons
apm install highlight-selected
apm install hyperclick
apm install ide-css
apm install ide-json
apm install ide-typescript
apm install intentions
apm install language-fish-shell
apm install linter
apm install linter-eslint
apm install linter-ui-default
apm install mprettier
apm install sort-lines
apm install teletype
apm install time-status
apm install wakatime

printf "%s\n"  "- Configuring Atom."
cp -rv ../assets/.atom ~
