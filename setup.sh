#! /usr/bin/env sh

# Make sure we are running in the directory this file is in
DIR=$(dirname "$0")
cd "$DIR"
. scripts/functions.sh

info "Running Bootstrap"
info "Symlinking the config directory..."
ln -s ~/.dotfiles/config ~/.config

info "Installing Software from Homebrew"
brew update
brew upgrade
brew bundle

info "Setup Fish Shell..."
./fish.sh

info "Editing macOS settings..."
./macos.sh
