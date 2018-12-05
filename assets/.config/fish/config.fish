# Remove the newcomer fish greeting.
set fish_greeting ""
set -x GPG_TTY (tty)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
