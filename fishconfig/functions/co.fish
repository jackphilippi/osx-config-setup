# Defined via ~/.config/fish/functions/co.fish
function co --wraps='git checkout' --description 'alias co git checkout'
  git checkout $argv; 
end
