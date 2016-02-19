# dotfiles
These are various config files for tools I use. 

## Requirements

For use of the .zshrc, zsh, [Oh My Zsh](http://ohmyz.sh/) and the [Powerlevel9k](https://github.com/bhilburn/powerlevel9k) theme should be installed.

For the .gitconfig [meld](http://meldmerge.org/) is the merge tool.

## Usage

To use checkout the repo and either manually link the files into our home directory or use a tool like [stow](https://www.gnu.org/software/stow/).  With stow, `cd` into the checked out repo's directory and run 

```
stow . --ignore=README.md
```

Be sure to remove/back up any files currently in place in your home directory before doing this.
