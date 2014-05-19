#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

git submodule foreach git pull origin master
git submodule update

rsync --exclude ".git" \
      --exclude ".gitmodules" \
      --exclude "install.sh" \
      --exclude "update.sh" \
      --exclude "README.md" \
      -av . ~

vim +BundleUpdate +qall
