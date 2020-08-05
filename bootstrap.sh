#! /usr/bin/env sh

# Make sure we are running in the directory this file is in
DIR=$(dirname "$0")
cd "$DIR"
# . scripts/functions.sh

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
}

echo ''
echo "Setting Up Machine"




info "Installing XCode command line tools..."
if xcode-select --print-path &>/dev/null; then
    success "XCode command line tools already installed."
elif xcode-select --install &>/dev/null; then
    success "Finished installing XCode command line tools."
else
    fail "Failed to install XCode command line tools."
fi

info "Installing Homebrew package manager"
if test ! $(which brew)
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  success "Finished installing Homebrew."
else
  success "Homebrew already installed."
fi

