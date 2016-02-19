export ZSH=/home/keir/.oh-my-zsh

# Themes stored in ~/.oh-my-zsh/themes/
ZSH_THEME="powerlevel9k/powerlevel9k"

# Plugins stored in ~/.oh-my-zsh/custom/plugins/
plugins=(git colorize)

COMPLETION_WAITING_DOTS="true"

# Powerlevel9k theme options
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_VCS_GIT_ICON=''

# User configuration
export DEFAULT_USER=keir
export EDITOR='vim'

source $ZSH/oh-my-zsh.sh

alias cat=colorize
eval "$(grunt --completion=zsh)"
eval "$(gulp --completion=zsh)"

#PATH variable should be set in .zshenv
