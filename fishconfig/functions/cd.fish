function use_nvmrc
    if test -f .nvmrc
        set node_version (cat .nvmrc)
        nvm use $node_version
    else if test (nvm current) != (nvm version default)
        echo "Reverting to nvm default version"
        nvm use default
    end
end

function cd
    builtin cd $argv
    use_nvmrc
end
