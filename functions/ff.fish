function ff -d 'fastfetch shortcut'
  if type --quiet fastfetch
    fastfetch $argv
  else
    command neofetch $argv
  end
end