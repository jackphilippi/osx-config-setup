# Run Dev Branch
# CD into given repo and run code for given branch
function rdb
    # Ensure repo and branch are defined
    if test (count $argv) -ne 2
        echo "Usage: rdb <repo> <branch>"
        return 1
    end

    set dir $argv[1]
    set branch $argv[2]

    # CD into repo directory
    cd ~/git/$dir
    if test $status -ne 0 -o ! -d .git  
        echo "Error: Not a valid git directory"
        return 1
    end
    
    # Ensure the branch is up to date
    git pull

    # Checkout the given branch
    git checkout $branch
    if test $status -ne 0
        echo "Error: Could not check out branch $branch"
        return 1
    end

    # Install dependencies and run the app
    yarn install && yarn run dev
end
