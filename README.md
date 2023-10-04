# dotfiles
These are various config files for tools I use.

## Requirements

For use of the .zshrc, zsh, [Oh My Zsh](http://ohmyz.sh/) and the [Starship](https://starship.rs/) prompt should be installed.

For the .gitconfig [meld](http://meldmerge.org/) is the merge tool and `git-credentials-libsecret` is the credentials helper.  
[Difftastic](https://github.com/Wilfred/difftastic) is used for diffs. `cat` is aliased to `bat` for syntax highlighting. 

## Usage

To use checkout the repo and either manually link the files into our home directory or use a tool like [stow](https://www.gnu.org/software/stow/).  
With stow, `cd` into the checked out repo's directory and run

```
stow .
```

Be sure to remove/back up any files currently in place in your home directory before doing this.
