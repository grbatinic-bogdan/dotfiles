# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Plugins
# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  docker
  docker-compose
  npm
  zsh-autosuggestions  
)

source $ZSH/oh-my-zsh.sh

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    CYGWIN*)    MACHINE=Cygwin;;
    MINGW*)     MACHINE=MinGw;;
    *)          MACHINE="UNKNOWN:${unameOut}"
esac
export MACHINE

# Source aliases
# For a full list of active aliases, run `alias`.
if [[ "$MACHINE" == "Mac" ]];then
  PROJECT_ROOT='/Users/bogdan.grbatinic@futurice.com/projects/dotfiles'
  source "$PROJECT_ROOT/env/aliases-shared.sh"
  source "$PROJECT_ROOT/env/aliases-mac.sh"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# enable zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh