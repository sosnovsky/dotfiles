# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/bin:$PATH:/usr/local/sbin:$PATH"

fpath=( "$HOME/.zfunctions" $fpath )

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init - --no-rehash)"
fi

alias bi="bundle install"
alias be="bundle exec"
alias bo="bundle outdated"

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

autoload -U compinit promptinit
promptinit; prompt pure
compinit
