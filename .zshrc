export ZSH=~/.oh-my-zsh

# Plugins stored in ~/.oh-my-zsh/custom/plugins/
plugins=(git bgnotify docker npm sbt zsh-syntax-highlighting gradle kubectl cargo docker-compose)

COMPLETION_WAITING_DOTS="true"

# User configuration
export DEFAULT_USER=keir
export EDITOR='vim'

source $ZSH/oh-my-zsh.sh

alias cat=ccat
alias diff='diff -u --color=auto'

# Load machine-specific configuration
if [ -f ~/.zshlocal ]
then
  source ~/.zshlocal
fi

eval "$(starship init zsh)"

# PATH variable should be set in .zshenv
