#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

git pull origin master
git submodule init
git submodule update

rsync --exclude ".git" \
      --exclude ".gitmodules" \
      --exclude "install.sh" \
      --exclude "update.sh" \
      --exclude "pull_submodules.sh" \
      --exclude "README.md" \
      -av . ~

vim +PluginUpdate +qall
