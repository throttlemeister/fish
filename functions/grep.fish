# Defined in - @ line 1
function grep
  if test -e /usr/local/bin/rg
    /usr/local/bin/rg  $argv;
  else
    command grep -n $argv;
  end
end