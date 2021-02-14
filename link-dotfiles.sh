#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    CYGWIN*)    MACHINE=Cygwin;;
    MINGW*)     MACHINE=MinGw;;
    *)          MACHINE="UNKNOWN:${unameOut}"
esac

echo "Creating symlinks for dotfiles to $HOME"

# Symlink all dotfiles on Mac
if [[ $MACHINE == "Mac" ]]; then
  for f in dotfiles/\.[^.]*; do
    FILE="$(basename $f)"
    ln -sf "$PWD/dotfiles/$FILE" "$HOME"
  done
fi

# Source .zshrc to update env
# Ignore the errors generated by this source.
# They only appear during this process. They work properly on new shell startup.
echo "Linked dotfiles. Please restart your shell. "
