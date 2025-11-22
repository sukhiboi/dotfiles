export DOTFILES_DIR="/Users/sukhdev/.config"

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
alias p="pwd"
alias repl="node-prototype-repl"
alias py="python3"
alias pip="pip3"
alias vim="nvim"
alias ch="~/bin/cht.sh"
alias sonarup="docker-compose -f ~/.config/scripts/sonar/docker-compose.yml  up -d"
alias mask="awk '{printf \"%s\", substr(\$0,1,5); for(i=6; i<=length(\$0); i++) printf \"*\"; print \"\"}'"

alias s='git rev-parse --git-dir > /dev/null 2>&1 && git status || l'
