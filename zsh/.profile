export ANDROID_NDK_REPOSITORY=/opt/android-sdk/ndk-bundle
export ANDROID_NDK=/opt/android-sdk/ndk-bundle
export ANDROID_SDK=/opt/android-sdk
export VISUAL="nvim"
export EDITOR="$VISUAL"
export TERM=screen-256color
export BLOCKS_DIR=~/.config/i3blocks/blocks
# export GDK_SCALE=2

export PATH=$HOME/bin:$PATH
export PATH=$(ruby -e 'print Gem.user_dir')/bin:$PATH
export PATH=$(yarn global bin):$PATH
export PATH=$ANDROID_NDK_REPOSITORY:$PATH

[[ -s "$HOME/.rvm/scripts/rvm"  ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r "$HOME/.rvm/scripts/completion"  ]] && source "$HOME/.rvm/scripts/completion"

if [ -r ~/.aliases ]; then . ~/.aliases; fi

source /usr/share/nvm/init-nvm.sh 2> /dev/null
