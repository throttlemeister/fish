# Defined in - @ line 1
#
# Let's check if we have ripgrep installed and if so
# we use it, otherwise use standard grep with options
function grep
  if test -e /usr/local/bin/rg
    /usr/local/bin/rg  $argv;
  else
    command grep -n --color $argv;
  end
end