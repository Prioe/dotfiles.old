source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle cp
antigen bundle httpie
antigen bundle iwhois
antigen bundle lol
antigen bundle node
antigen bundle nvm
antigen bundle sudo
antigen bundle systemadmin
antigen bundle systemd
antigen bundle yarn
antigen bundle github
antigen bundle archlinux
antigen bundle common-aliases
antigen bundle vi-mode
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme refined

# completions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# Tell Antigen that you're done.
antigen apply

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

unalias tldr
