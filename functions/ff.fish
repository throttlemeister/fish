function ff -d 'fastfetch shortcut'
  if type --quiet fastfetch
    fastfetch -l ~/ansible/files/twgrey.png --logo-type iterm $argv
  else
    command neofetch $argv
  end
end