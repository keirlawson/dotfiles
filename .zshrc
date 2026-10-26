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
alias sk='sk --color=light'
alias diff='diff -u --color=auto'
alias mkshell='echo "{ nixpkgs ? import <nixpkgs> {} }:
with nixpkgs; mkShell {
  buildInputs = [ ];
  shellhook = '"'"''"'"'
  '"'"''"'"';
}
" >> shell.nix && echo "use nix" >> .envrc && direnv allow'
alias cm='rm -fr .bsp .bloop project/metals.sbt project/project/metals.sbt .metals'
alias rg='rg --hidden'

wt() {
      local worktree_dir
      worktree_dir=$(git-worktree-branch "$1")

      if [ $? -eq 0 ] && [ -n "$worktree_dir" ]; then
          cd "$worktree_dir" || return 1
      else
          return 1
      fi
  }

# Load machine-specific configuration
if [ -f ~/.zshlocal ]
then
  source ~/.zshlocal
fi

eval "$(starship init zsh)"

# PATH variable should be set in .zshenv
