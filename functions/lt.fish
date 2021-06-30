# Defined in - @ line 1
function lt
  if command -sq exa
    exa -laa -snew --group-directories-first --git $argv;
  else
    command ls -ltr $argv;
  end
end