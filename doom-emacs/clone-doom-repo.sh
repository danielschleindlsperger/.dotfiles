#! /bin/bash

set -e

TARGET_DIR="/Users/${USER}/.emacs.d"

if [ -d "${TARGET_DIR}" ]; then
  echo "${TARGET_DIR} already exists. Skipping clone of Doom Emacs repository."
else
  echo "Cloning Doom Emacs to ${TARGET_DIR}"
  git clone --depth 1 https://github.com/hlissner/doom-emacs "${TARGET_DIR}"
  YES=true "${TARGET_DIR}/bin/doom" install
fi