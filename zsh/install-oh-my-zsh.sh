#! /bin/bash

set -e

ZSH_DIR="/Users/${USER}/.oh-my-zsh"

if [ -d "${ZSH_DIR}" ]; then
  echo "ZSH_DIR already exists. Skipping oh-my-zsh installation."
else
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi