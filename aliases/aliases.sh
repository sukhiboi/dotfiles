source $DOTFILES_DIR/aliases/docker-aliases.sh
source $DOTFILES_DIR/aliases/git-aliases.sh
source $DOTFILES_DIR/aliases/tmux-aliases.sh
source $DOTFILES_DIR/aliases/kube-aliases.sh
source $DOTFILES_DIR/aliases/yarn-aliases.sh
source $DOTFILES_DIR/aliases/spring-aliases.sh

alias l="ls -GFlha"
alias q="clear"
alias grep="grep --color=always"
alias tree="tree -x --dirsfirst -CI 'node_modules'"
alias vz="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias react="npx create-react-app"
alias p="pwd"
alias repl="node-prototype-repl"
alias python="python3"
alias vim="nvim"
alias ch="~/bin/cht.sh"
alias cat="bat"

# less() {
#   if [[ $1 == *.md ]]
#   then
#     glow -p $1
#   else
#     /usr/bin/less $1
#   fi
# }

# alias less="less"

sonarscan() {
  sonar-scanner -Dsonar.projectKey=$1 -Dsonar.sources=. -Dsonar.host.url=http://localhost:9000 -Dsonar.login=60110291651d9c7c0912c572d038089ef07d1ffc
}
