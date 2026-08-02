# dotfiles

My dotfiles

## Installation

```shell
git clone https://github.com/gonzolino/dotfiles ~/repos/dotfiles
rsync -r ~/repos/dotfiles/ ~ --exclude=.git --exclude=README.md
```

## Additional configuration

### Installation of oh-my-zsh

```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --global
```

