# Defined in - @ line 1
function ll
  if command -sq exa
    exa -laa $argv;
  else
    ls -la $argv;
  end
end