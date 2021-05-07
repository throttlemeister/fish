# Defined in - @ line 1
function lt --wraps=ls --description 'alias lt ls -ltr'
  ls -ltr $argv;
end
