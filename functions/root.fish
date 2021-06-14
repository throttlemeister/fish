# Defined in - @ line 1
function root --wraps='sudo -i' --description 'alias root sudo -i'
  if test -n "$WSL_INTEROP"
    sudo WSL_INTEROP=$WSL_INTEROP -i $argv;
  else
    sudo -i $argv;
end
