# Defined in - @ line 1
function zypper --wraps='sudo zypper'
  sudo zypper $argv;
end
