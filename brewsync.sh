#!/usr/bin/env bash

set -ev

! ln -s $PWD/Brewfile ~/.Brewfile
#which hub || brew install hub

brew bundle install --global

brew bundle dump --global --force

git add Brewfile && git commit -m "Brew package sync"
 