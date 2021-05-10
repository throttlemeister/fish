# Defined in - @ line 1
function lt
  if test -e /usr/local/bin/exa
    exa -laa -snew $argv;
  else
    ls -ltr $argv;
  end
end