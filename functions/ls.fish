function ls -d 'eza instead of ls'
  if type --quiet eza && test "$argv[1]" != "-ltr"
    eza --header --group-directories-first --git $argv
  else
    command ls --color=always $argv
  end
end

function ll
  if command -sq eza
    ls -laa -g $argv
  else
    command ls -la $argv
  end
end

function l
    ls $argv
end

function lt
  if command -sq eza
    ls -laa -snew -g $argv;
  else
    command ls -ltr $argv;
  end
end
