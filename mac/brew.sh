#!/usr/bin/env bash

# Install Homebrew (if not installed)
echo "Installing Homebrew."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install `wget` with IRI support.
brew install wget

# Install useful binaries.
brew install ack
brew install autojump
brew install git
brew install rsync
brew install tree

# Installs Casks
brew tap homebrew/cask

## Apps I use
brew install --cask 1password
brew install --cask google-chrome #Chrome
brew install --cask kap
brew install --cask toggl-track
brew install --cask skype
brew install --cask slack
brew install --cask spotify
brew install --cask microsoft-teams
brew install --cask visual-studio-code
brew install --cask postico
brew install --cask docker
brew install --cask insomnia
brew install --cask vlc

# Remove outdated versions from the cellar.
brew cleanup
