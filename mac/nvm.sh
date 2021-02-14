#!/usr/bin/env bash

# Install nvm https://github.com/nvm-sh/nvm#installing-and-updating
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh

# Install latest lts node
nvm install --lts
