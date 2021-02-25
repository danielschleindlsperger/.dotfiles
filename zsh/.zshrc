#!/bin/bash

# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER}/.oh-my-zsh"
export ZSH_THEME="agnoster"
export DEFAULT_USER="$USER"
export HYPHEN_INSENSITIVE="true"
export COMPLETION_WAITING_DOTS="true"

export plugins=(
  git
  nvm # still requires nvm to be installed
  ssh-agent
  vi-mode
  aws
  docker
  docker-compose
)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/usr/local/share/dotnet:$PATH"
export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
export PATH="/Applications/Racket v7.9/bin:$PATH"
export PATH="$(brew --prefix janet)/bin:$PATH"
export NVM_LAZY=true # lazy load nvm, node, npm in favor of faster shell startup time
export LANG=en_US.UTF-8

#
# ALIASES
#
alias phpunit="vendor/bin/phpunit"
alias vim="nvim"
alias k="kubectl"

# source oh-my-zsh BEFORE the completions
source "${ZSH}/oh-my-zsh.sh"

# fix completions for homebrew installed stuff
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  rm -f ~/.zcompdump; compinit
fi

#
# AUTOCOMPLETIONS
#
complete -C '/usr/local/bin/aws_completer' aws
source /usr/local/etc/bash_completion.d/az

# for some reason this needs to come after setting $PATH and after initializing oh-my-zsh
source "$(brew --prefix asdf)/asdf.sh"
source ~/.asdf/plugins/java/set-java-home.zsh
source /usr/local/etc/profile.d/z.sh

# NVM - Node.js Version Manager
export NVM_DIR="$HOME/.nvm"
source "$(brew --prefix nvm)/nvm.sh"
