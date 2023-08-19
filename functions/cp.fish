function cp
  if command -sq advcp
    advcp -g $argv
  else
    command cp $argv
  end
end
