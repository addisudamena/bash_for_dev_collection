# Bash Productivity Hacks


# Quick Navigation
goto_workspace() {
    cd ~/Documents/Workspace
}

goto_project() {
    cd ~/Documents/Projects/$1
}

# Git Shortcuts

git_status_all() {
    for dir in $(find . -type d -name ".git"); do
        echo "=== $(dirname $dir) ==="
        git -C $(dirname $dir) status
    done
}

git_commit_push() {
    git add .
    git commit -m "$1"
    git push origin $(git branch --show-current)
}

# Docker Utilities

docker_prune() {
    docker system prune -af --volumes
}

docker_logs() {
    docker logs -f $1
}

docker_restart() {
    docker restart $1
}

# File Management

find_file() {
    find . -name "$1"
}

find_code() {
    grep -r "$1" .
}

extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2) tar xjf $1 ;;
            *.tar.gz) tar xzf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) unrar x $1 ;;
            *.gz) gunzip $1 ;;
            *.tar) tar xf $1 ;;
            *.tbz2) tar xjf $1 ;;
            *.tgz) tar xzf $1 ;;
            *.zip) unzip $1 ;;
            *.Z) uncompress $1 ;;
            *.7z) 7z x $1 ;;
            *) echo "Cannot extract '$1'" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Task Automation

run_tests() {
    npm run test
}

build_project() {
    npm run build
    echo "Build completed. 🚀"
}

deploy_app() {
    echo "Building application..."
    npm run build
    echo "Deploying to server..."
    scp -r dist/* user@yourserver:/var/www/html
    echo "Deployment completed! 🎉"
}

# System Utilities

my_ip() {
    curl -s https://ipinfo.io/ip
}

free_memory() {
    free -h
}

kill_port() {
    fuser -k $1/tcp
}

update_system() {
    sudo apt update && sudo apt upgrade -y
}

# Timer Utility

timer() {
    start=$(date +%s)
    $@
    end=$(date +%s)
    echo "Time taken: $((end - start)) seconds"
}

