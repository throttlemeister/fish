# Defined in - @ line 1
function ll
  if test -e /usr/local/bin/exa
    exa -laa $argv;
  else
    ls -la $argv;
  end
end