function ls -d 'exa instead of ls'
  if type --quiet exa
    exa --group-directories-first --git $argv
  else
    command ls --color=auto $argv
  end
end

function ll
    ls -laa $argv
end

function l
    ls $argv
end

function lt
  if command -sq exa
    argparse 'ltr' -- $argv
    exa -laa -snew --group-directories-first --git $argv;
  else
    command ls -ltr $argv[2];
  end
end