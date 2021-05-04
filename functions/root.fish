# Defined in - @ line 1
function root --wraps='sudo -i' --description 'alias root sudo -i'
  sudo -i $argv;
end
