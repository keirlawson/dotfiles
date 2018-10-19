export ZSH=~/.oh-my-zsh

# Themes stored in ~/.oh-my-zsh/themes/
ZSH_THEME="powerlevel9k/powerlevel9k"

# Plugins stored in ~/.oh-my-zsh/custom/plugins/
plugins=(git bgnotify docker mvn npm sbt zsh-syntax-highlighting vagrant)

COMPLETION_WAITING_DOTS="true"

# Powerlevel9k theme options
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=''
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='007'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

# User configuration
export DEFAULT_USER=keir
export EDITOR='vim'

source $ZSH/oh-my-zsh.sh

alias cat=ccat
alias mvn='mvn -T 1.0C'
alias diff='diff -u --color=auto'

# Load machine-specific configuration
if [ -f ~/.zshlocal ]
then
  source ~/.zshlocal
fi

# PATH variable should be set in .zshenv
