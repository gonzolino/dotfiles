#!/usr/bin/env bash
git submodule foreach git pull origin master
git commit -am "Update submodules"
