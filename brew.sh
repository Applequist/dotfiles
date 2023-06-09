#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# TODO: Install Homebrew if not installed.

# Make sure we're using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew's installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don't forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU `find`, `locate`, `updatedb` ans `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install modern version of Bash.
brew install bash
brew install bash-completion@2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
    echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
    chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install tree

# Remove outdated versions from the cellar.
brew cleanup

