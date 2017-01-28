export PATH=$HOME/bin:$PATH
export PATH=`ruby -e 'print Gem.user_dir'`/bin:$PATH
export VISUAL="vim"
export TERM=screen-256color
export BLOCKS_DIR=~/.config/i3blocks/blocks

[[ -s "$HOME/.rvm/scripts/rvm"  ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r "$HOME/.rvm/scripts/completion"  ]] && source "$HOME/.rvm/scripts/completion"

if [ -r ~/.aliases ]; then . ~/.aliases; fi

source /usr/share/nvm/init-nvm.sh
nvm use default
