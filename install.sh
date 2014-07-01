#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

git submodule init
git submodule update

rsync --exclude ".git" \
      --exclude ".gitmodules" \
      --exclude "install.sh" \
      --exclude "update.sh" \
      --exclude "README.md" \
      -av . ~

vim +PluginInstall +qall
