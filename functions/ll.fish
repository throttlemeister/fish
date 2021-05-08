# Defined in - @ line 1
function ll --wraps='exa -laa' --description 'alias ll exa -laa'
  exa -laa $argv;
end
