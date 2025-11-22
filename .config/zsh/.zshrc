export GIT_EDITOR=vim

ZSH_THEME="robbyrussell"

plugins=(git direnv)

source $HOME/bin/oh-my-zsh/oh-my-zsh.sh

# aliases
source $HOME/.config/aliases/aliases.sh

# path updates
source $HOME/.config/PATH

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
jenv enable-plugin export

# autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

#fnm
eval "$(fnm env --use-on-cd --shell zsh)"

#fzf
source <(fzf --zsh)

