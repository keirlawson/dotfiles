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
export ZSH_AUTOSUGGEST_STRATEGY=completion
export DOCKER_CONFIG=~/.dotfiles/.docker/
export BAT_THEME=OneHalfLight
export PATH=$HOME/.cargo/bin:$HOME/.local/share/coursier/bin:$PATH

source $ZSH/oh-my-zsh.sh

alias cat=bat
alias diff='diff -u --color=auto'
alias mkshell='echo "{ nixpkgs ? import <nixpkgs> {} }:
with nixpkgs; mkShell {
  buildInputs = [ ];
  shellhook = '"'"''"'"'
  '"'"''"'"';
}
" >> shell.nix && echo "use nix" >> .envrc && direnv allow'
alias jc='ji "assignee IN (currentUser()) AND statusCategory NOT IN (Done) ORDER BY created DESC" -n NOJIRA | xargs -I {} sh -c '"'"'git commit -e -m "[{}] " && git config branch.$(git branch --show-current).description  "{}: "'"'"''
alias jp='git branch --edit-description && git config branch.$(git branch --show-current).description | xargs -I {} gh pr create --title "{}" --fill'
alias jca='git add . && jc'
alias jpu='git pu && jp'
alias cm='rm -fr .bsp .bloop project/metals.sbt project/project/metals.sbt .metals'
alias ghc='gh p && gh pr view --json url,title --jq .title,.url | xargs -d '"'"'\n'"'"' sh -c \\'"'"'echo ":pull-request: $1 - $0"'"'"' | wl-copy'

# Load machine-specific configuration
if [ -f ~/.zshlocal ]
then
  source ~/.zshlocal
fi

eval "$(starship init zsh)"

# PATH variable should be set in .zshenv
