# set arguments for all 'brew cask install' commands
cask_args appdir: "/Applications"
cask_args language: "en"

## applications
cask "kitty" # terminal emulator https://sw.kovidgoyal.net/kitty
# cask "brave-browser"
# cask "firefox"
# cask "spotify"
# cask "visual-studio-code"
# cask "figma"
# cask "tunnelblick" # openvpn https://tunnelblick.net/
# cask "spectacle" # macos window management https://www.spectacleapp.com/
# cask "alfred" # macos productivity app https://www.alfredapp.com/
# cask "docker" # whales https://www.docker.com/
# cask "1password" # password manager https://1password.com/
# cask "slack" # more distracting email https://slack.com/
mas "Bear", id: 1091189122
mas "Microsoft To Do", id: 1274495053
# TODO: Email client (Outlook?)

# core stuff
brew "coreutils"
brew "curl"
brew "git"
brew "gpg"
brew "openssl"
brew "readline"
brew "bison", link: true, force: true, conflicts_with: ["bison"] # TODO: link properly, this is currently broken

## fonts
cask "font-fira-code-nerd-font"
# TODO: more fonts

## languages
brew "asdf" # version manager for almost all languages https://asdf-vm.com
brew "leiningen" # clojure build tool
brew "scala"
brew "sbt" # scala build tool https://www.scala-sbt.org/
brew "shellcheck"
# TODO: php
# brew "composer" # php package manager
# TODO: ruby

## shell
brew "zsh"
brew "zsh-completions"
brew "htop"
brew "jq"
brew "httpie" # http client https://github.com/httpie/httpie
brew "z" # jump around previous path locations in shell https://github.com/rupa/z/
brew "fd" # 'find' in better https://github.com/sharkdp/fd
brew "ripgrep" # `rg`, similar to ack, ag. recursively search current directory for string https://github.com/BurntSushi/ripgrep
brew "the_silver_searcher" # `ag`, ack, but faseter https://github.com/ggreer/the_silver_searcher
brew "tree"
brew "neovim" # vim but new
brew "watch"
# emacs todo: checkout installation flags
# brew "d12frosted/emacs-plus/emacs-plus@28" # emacs

## tools
whalebrew "whalebrew/awscli"
whalebrew "whalebrew/ansible" # it automation https://docs.ansible.com/ansible/latest/index.html
whalebrew "whalebrew/kubectl" # kubernetes control cli
whalebrew "whalebrew/helm" # kubernetes package manager https://helm.sh/
whalebrew "whalebrew/terraform" # infrastructure as code https://www.terraform.io/

# borkdude/brew/clj-kondo # TODO: docker image?