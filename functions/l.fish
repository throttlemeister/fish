# Defined in - @ line 1
function l
  if command -sq exa
    exa --group-directories-first --git $argv;
  else
    ls $argv;
  end
end