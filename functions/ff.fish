function ff -d 'fastfetch shortcut'
  if type --quiet fastfetch
    if test -n "$ALACRITTY_WINDOW_ID"
      fastfetch -l opensuse $argv
    else
      fastfetch -l ~/ansible/files/twgrey.png --logo-type iterm --logo-padding-top 2 $argv
    end
  else
    command neofetch $argv
  end
end
