# Defined in - @ line 1
function l
  if command -sq exa
    exa  $argv;
  else
    ls $argv;
  end
end