# Defined in - @ line 1
function grep --wraps='rg' --description 'alias grep rg'
  /home/throttlemeister/.cargo/bin/rg  $argv;
end
