function ls -d 'exa instead of ls'
  if type --quiet exa && test "$argv[1]" != "-ltr"
    exa --header --group-directories-first --git $argv
  else
    command ls --color=always $argv
  end
end

function ll
  if command -sq exa
    ls -laa -g $argv
  else
    command ls -la $argv
  end
end

function l
    ls $argv
end

function lt
  if command -sq exa
    ls -laa -snew -g $argv;
  else
    command ls -ltr $argv;
  end
end
