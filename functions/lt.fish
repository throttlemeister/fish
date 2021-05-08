# Defined in - @ line 1
function lt --wraps=exa --description 'alias lt exa -laa -snew'
  exa -laa -snew $argv;
end
