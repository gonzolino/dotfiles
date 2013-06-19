#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

rsync --exclude ".git" --exclude ".gitmodules" --exclude "install.sh" -av --delete . ~
