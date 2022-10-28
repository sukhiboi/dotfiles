alias dcb="docker-compose up --build"
alias dcu="docker-compose up"
alias dcd="docker-compose down"

alias dcl="docker container ls -a"
alias dcrm="docker container rm -f"
alias dcp="docker container prune"

alias dvrm="docker volume rm -f"
alias dvp="docker volume prune"
alias dvl="docker voulme ls -a"

alias dirm="docker image rm -f"
alias dip="docker image prune"
alias dil="docker image ls -a"

alias dni="docker network inspect"

alias dbb="docker run -it ${1} busybox /bin/sh"
