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
brew install wget --with-iri

# Install useful binaries.
brew install ack
brew install autojump
brew install git
brew install rsync
brew install tree

# Installs Casks
brew tap homebrew/cask

## Apps I use
brew cask install 1password
brew cask install google-chrome #Chrome
brew cask install kap
brew cask install toggl-track
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install microsoft-teams
brew cask install visual-studio-code
brew cask install postico
brew cask install docker
brew cask install insomnia
brew cask install vlc

# Remove outdated versions from the cellar.
brew cleanup
