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
rsync -r ~/repos/dotfiles/ ~ --exclude=.git --exclude=README.md
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

### Global .gitignore

```shell
git config --global core.excludesfile ~/.gitignore_global
```

### Setup Mac Homebrew and Apps

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle --global
```

### Mac Setup

#### Enable FileVault

```shell
sudo fdesetup enable
```

Remember to note down the recovery key!
