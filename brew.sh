#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Do installations per ~/.Brewfile
brew bundle --global

# Post-install fixups
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Remove outdated versions from the cellar.
brew cleanup

