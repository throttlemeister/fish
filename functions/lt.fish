# Defined in - @ line 1
function lt
  if command -sq exa
    exa -laa -snew $argv;
  else
    ls -ltr $argv;
  end
end