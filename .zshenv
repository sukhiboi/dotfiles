export ZDOTDIR="$HOME/.config/zsh"

export HISTFILE="$ZDOTDIR/history/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=50000

# Oh My Zsh location (code lives in ~/bin)
export ZSH="$HOME/bin/oh-my-zsh"

# All user config/custom stuff under ~/.config/zsh/custom
export ZSH_CUSTOM="$ZDOTDIR/custom"

# Cache dir for oh-my-zsh + plugins
export ZSH_CACHE_DIR="$ZDOTDIR/cache"

# Where compinit stores its dump file (no .zcompdump in $HOME)
export ZSH_COMPDUMP="$ZDOTDIR/cache/.zcompdump-$ZSH_VERSION"
