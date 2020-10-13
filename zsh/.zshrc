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


# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Users/$USER/.emacs.d/bin:$PATH"

#
# ALIASES
#
alias composer="php /usr/local/bin/composer.phar"
alias phpunit="vendor/bin/phpunit"

# source oh-my-zsh BEFORE the completions
source "${ZSH}/oh-my-zsh.sh"

#
# AUTOCOMPLETIONS
#

complete -C '/usr/local/bin/aws_completer' aws
source /usr/local/etc/bash_completion.d/az

# for some reason this needs to come after setting $PATH and after initializing oh-my-zsh
source "$(brew --prefix asdf)/asdf.sh"
source ~/.asdf/plugins/java/set-java-home.zsh
source /usr/local/etc/profile.d/z.sh