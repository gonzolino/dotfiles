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
rsync -r ~/repos/dotfiles/ ~ --exclude=.git --exclude=.vim --exclude=README.md
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

```
git config --global core.excludesfile ~/.gitignore_global
```

### Setup Mac Homebrew and Apps

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle --global
```

### Visual Studio Code

#### Init new installation

```
cp vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
for e in `cat vscode-extensions` ; do code --install-extension $e ; done
```

#### Renew list of vscode extensions

```
code --list-extensions > vscode-extensions
```