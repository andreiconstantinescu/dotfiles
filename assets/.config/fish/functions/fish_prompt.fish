# name: RobbyRussel
#
# You can override some default options in your config.fish:
  # set -g theme_display_git_untracked no

function _git_branch_name
  printf "%s\n"  (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  set -l show_untracked (command git config --bool bash.showUntrackedFiles)

  set -g untracked ''
  if [ "$theme_display_git_untracked" = 'no' -o "$show_untracked" = 'false' ]
    set -g untracked '--untracked-files=no'
  end
  printf "%s\n"  (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  if test $last_status = 0
      set arrow "$green➜ "
  else
      set arrow "$red➜ "
  end
  set -l cwd $cyan(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set -l git_branch $red(_git_branch_name)
    set git_info "$blue git:($git_branch$blue)"

    if [ (_is_git_dirty) ]
      set dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end
  printf "%s\n"  -n -s $arrow ' ' $cwd $git_info $normal ' '


  # wakatime for fish
  #
  # Add this to the fish_prompt function in
  # ~/.config/fish/functions/fish_prompt.fish
  # (or if it doesn't exist, create it).


  # We've also included an example of how
  # to determine the current project from the pwd.
  # It'll only work without alterations if
  # you happen to keep all your projects in
  # ~/Sites/ on a Mac, but it's easy to modify

  set -l project
end

  if printf "%s\n"  (pwd) | grep -qEi "^/Users/$USER/github/"
      set  project (printf "%s\n"  (pwd) | sed "s#^/Users/$USER/github/\\([^/]*\\).*#\\1#")
  else if printf "%s\n"  (pwd) | grep -qEi "^/Users/$USER/projects/"
      set  project (printf "%s\n"  (pwd) | sed "s#^/Users/$USER/projects/\\([^/]*\\).*#\\1#")
  else
      set  project "Terminal"
  end

wakatime --write --plugin "fish-wakatime/0.0.1" --entity-type app --project "$project" --entity (printf "%s\n"  $history[1] | cut -d ' ' -f1) 2>&1 > /dev/null&
