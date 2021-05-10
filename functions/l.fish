# Defined in - @ line 1
function l
  if test -e /usr/local/bin/exa
    exa  $argv;
  else
    ls $argv;
  end
end