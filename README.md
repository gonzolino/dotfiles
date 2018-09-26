# dotfiles
My dotfiles for

* git
* ssh
* vim
* zsh
* iTerm2 shell integration

## Installation
Be careful, installing these will overwrite your dotfiles

```shell
git clone https://github.com/gonzolino/dotfiles ~/repos/dotfiles
rsync ~/repos/dotfiles ~ --exclude=.vim --exclude=README.md
```

## Additional configuration
### Installation of oh-my-zsh
The configuration for oh-my-zsh is already included in .zshrc.
We only need to clone the oh-my-zsh repository:

```shell
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
```

### Installation of vundle

```shell
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
vim +PluginUpdate +qall
```