#! /usr/bin/env sh

# Make sure we are running in the directory this file is in
DIR=$(dirname "$0")
cd "$DIR"
. scripts/functions.sh

info "Running Bootstrap"
info "Symlink config"
ln -s config ~/.config

info "Brew"
brew update
brew upgrade
brew bundle

./macos.sh
