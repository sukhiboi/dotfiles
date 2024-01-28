export DOTFILES_DIR="$HOME/bin/dotfiles"

#export ZSH_DIR="$HOME/bin/programs/zsh"
#export ZSH="$ZSH_DIR/oh-my-zsh"
#export ZSH_CACHE_DIR="$ZSH_DIR/cache"
export DOCKER_HOST=unix:///Users/sukhdev/.colima/docker.sock

#zstyle ':omz:update' mode auto
#zstyle ':omz:update' frequency 1

plugins=(git)

#ZSH_THEME="robbyrussell"

#source $ZSH/oh-my-zsh.sh
source $ZSH_DIR/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $ZSH_DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $DOTFILES_DIR/zsh/PATH.sh
source $DOTFILES_DIR/zsh/PROGRAM_SETUP.sh
source $DOTFILES_DIR/aliases/aliases.sh
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk@17/include"

# bun completions
[ -s "/Users/sukhdev/.bun/_bun" ] && source "/Users/sukhdev/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export TESTCONTAINERS_HOST_OVERRIDE=$(colima ls -j | jq -r '.address')
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
export DOCKER_HOST=unix://$HOME/.colima/default/docker.sock

# export TESTCONTAINERS_RYUK_DISABLED=true

export TALISMAN_HOME=/Users/sukhdev/.talisman/bin

export XDG_CONFIG_HOME=~/.config

export TALISMAN_SKIP_UPGRADE=false

export PATH="/usr/local/opt/node@16/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@16/lib"
export CPPFLAGS="-I/usr/local/opt/node@16/include"
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

source /Users/sukhdev/.config/broot/launcher/bash/br
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
