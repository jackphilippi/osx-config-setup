# Defined via ~/.config/fish/functions/ll.fish
function ll --wraps=ls --wraps=eza --wraps='eza -la' --description 'alias ll eza -la'
  eza -la $argv; 
end
