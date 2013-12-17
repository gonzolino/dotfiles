# dotfiles
My dotfiles for
* git
* mercurial
* ssh
* vim
* zsh

## Installation
Be careful, installing these will overwrite your dotfiles

```shell
git clone https://github.com/gonzolino/dotfiles
cd dotfiles
git submodule init
git submodule update
./install.sh
vim +BundleInstall +qall
```
