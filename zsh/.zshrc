#!/bin/bash

# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER}/.oh-my-zsh"

export ZSH_THEME="agnoster"
export DEFAULT_USER="$USER"
export HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
export COMPLETION_WAITING_DOTS="true"

export plugins=(git ssh-agent zsh-nvm vi-mode aws docker docker-compose)

source "${ZSH}/oh-my-zsh.sh"
source /usr/local/etc/profile.d/z.sh # source `z` utility, installed with brew

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/Cellar/php/7.4.1/bin:$PATH"
export PATH="/Users/$USER/.emacs.d/bin:$PATH"

# PHPBREW
[[ -e ~/.phpbrew/bashrc ]]
source ~/.phpbrew/bashrc

switchphp() {
  brew unlink php && brew link --force --overwrite "php@$1"
}

# # Ruby
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# JABBA (JDK version switcher)
[ -s "/Users/${USER}/.jabba/jabba.sh" ] && source "/Users/${USER}/.jabba/jabba.sh"

#
# ALIASES
#
alias composer="php /usr/local/bin/composer.phar"
alias phpunit="vendor/bin/phpunit"

#
# AUTOCOMPLETIONS
#
## TODO
