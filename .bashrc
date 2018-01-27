# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

#Set up node tab completion
. <(npm completion)

#Set up out prompt to show git branch in purple if present
source /usr/share/git-core/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWUPSTREAM="auto"

purple=$(tput setaf 5)
reset=$(tput sgr0)
export PS1='[\u@\h \W\[$purple\]$(__git_ps1 "(%s)")\[$reset\]]\$ '

#Make ./* include hidden files
shopt -s dotglob
