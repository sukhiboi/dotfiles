export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git direnv)

source $ZSH/oh-my-zsh.sh

# aliases
source ~/.config/aliases/aliases.sh

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

