function cat -d 'bat instead of cat'
  if type --quiet bat
    bat $argv
  else
    command cat $argv
  end
end