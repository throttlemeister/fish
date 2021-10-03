function ls -d 'exa instead of ls'
  if type --quiet exa
    exa --header --group-directories-first --git $argv
  else
    command ls --color=auto $argv
  end
end

function ll
  if command -sq exa
    ls -laag $argv
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
