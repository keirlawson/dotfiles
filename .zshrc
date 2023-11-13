export ZSH=~/.oh-my-zsh

# Plugins stored in ~/.oh-my-zsh/custom/plugins/
plugins=(git docker npm sbt zsh-syntax-highlighting gradle kubectl rust docker-compose yarn nix-shell zsh-autosuggestions)

COMPLETION_WAITING_DOTS="true"

# User configuration
export DEFAULT_USER=keir
export EDITOR='hx'
export DFT_BACKGROUND=light
export SBT_TPOLECAT_DEV=true
export NIXPKGS_ALLOW_UNFREE=1

source $ZSH/oh-my-zsh.sh

alias cat=bat
alias diff='diff -u --color=auto'

# Load machine-specific configuration
if [ -f ~/.zshlocal ]
then
  source ~/.zshlocal
fi

eval "$(starship init zsh)"

# PATH variable should be set in .zshenv
