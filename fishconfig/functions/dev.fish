# Defined via `source`
function dev --wraps='git checkout develop' --description 'alias dev git checkout develop'
  git checkout develop $argv; 
end
