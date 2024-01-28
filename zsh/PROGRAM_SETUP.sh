# AutoJump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Direnv
eval "$(direnv hook zsh)"

# Rbenv
eval "$(rbenv init -)"

# Android Studio
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export TALISMAN_HOME="~/.talisman"
export TALISMAN_SKIP_UPGRADE="true"
