# Defined in - @ line 1
function dnf --wraps='sudo dnf'
  sudo dnf $argv;
end
