function gpu
  git push $argv -u origin (git rev-parse --abbrev-ref HEAD)
end
