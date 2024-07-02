# Defined via ~/.config/fish/functions/gs.fish
function gs --wraps='git status' --description 'alias gs git status'
  git status $argv; 
end
