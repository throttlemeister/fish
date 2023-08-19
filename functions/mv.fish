function mv
  if command -sq advmv
    advmv -g $argv
  else
    command mv $argv
  end
end
