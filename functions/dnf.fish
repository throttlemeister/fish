# Defined in - @ line 1
function dnf --wraps='sudo dnf' --description 'alias dnf sudo dnf'
  sudo dnf $argv;
end
