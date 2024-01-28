alias dcb="docker-compose up --build"
alias dcu="docker-compose up"
alias dcd="docker-compose down"

alias dcl="docker container ls"
alias dcrm="docker container rm -f"
alias dcp="docker container prune"

alias dvrm="docker volume rm"
alias dvp="docker volume prune"
alias dvl="docker volume ls"

alias dirm="docker image rm -f"
alias dip="docker image prune"
alias dil="docker image ls"

alias dni="docker network inspect"
alias dnl="docker network ls"
alias dnrm="docker network rm"
listContainersInNetwork() {
  dni "$1" | jq ".[0].Containers"
}
listContainerNamesInNetwork() {
  listContainersInNetwork "$1" | jq "map(.Name)"
}

alias dncl="listContainersInNetwork"
alias dncn="listContainerNamesInNetwork"

alias dpa="docker ps -a"

alias dbb="docker run -it ${1} busybox /bin/sh"
