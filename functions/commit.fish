function commit -d 'Git commit and more git related commands'
    if command -sq git
        git commit --all
    else
        echo "Git is not installed, please install git"
    end
end

function push
    if command -sq git
        git push
    else
        echo "Git is not install, please install git"
    end
end

function add
    if command -sq git
        git add .
    else
        echo "Git is not install, please install git"
    end
end