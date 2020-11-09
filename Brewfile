# set arguments for all 'brew cask install' commands
cask_args appdir: "/Applications"
cask_args language: "en"

## applications
# if kitty does not open, install manually: `curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`
cask "kitty" # terminal emulator https://sw.kovidgoyal.net/kitty
cask "firefox-developer-edition"
cask "google-chrome"
cask "spotify"
cask "visual-studio-code"
cask "figma"
cask "tunnelblick" # openvpn https://tunnelblick.net/
cask "spectacle" # macos window management https://www.spectacleapp.com/
cask "alfred" # macos productivity app https://www.alfredapp.com/
cask "docker" # whales https://www.docker.com/
cask "1password" # password manager https://1password.com/
cask "slack" # more distracting email https://slack.com/
# dbeaver requires fiddling with globally installed JDK, use the "Installer
# version on the homepage instead"
# cask "dbeaver-community" # universal database gui https://dbeaver.io/
mas "Bear", id: 1091189122
mas "Microsoft To Do", id: 1274495053
mas "Be Focused - Focus Timer", id: 973134470

# core stuff
brew "coreutils"
brew "curl"
brew "git"
brew "gpg"
brew "openssl"
brew "readline"
brew "bison", link: true, force: true, conflicts_with: ["bison"] # TODO: link properly, this is currently broken
brew "mercurial"

## fonts
tap "homebrew/cask-fonts"
cask "font-fira-code-nerd-font"
# TODO: more fonts

## languages
brew "nvm" # node version manager https://github.com/nvm-sh/nvm
brew "leiningen" # clojure build tool
brew "scala"
brew "sbt" # scala build tool https://www.scala-sbt.org/
brew "asdf"
brew "shellcheck"
brew "borkdude/brew/babashka" # interpreted clojure for cli scripting https://github.com/borkdude/babashka
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
brew "the_silver_searcher" # `ag`, ack, but faster https://github.com/ggreer/the_silver_searcher
brew "tree"
brew "neovim" # vim but new
brew "watch"
# emacs todo: checkout installation flags
# brew "d12frosted/emacs-plus/emacs-plus@28" # emacs

## tools
brew "azure-cli"
whalebrew "whalebrew/awscli"
whalebrew "whalebrew/ansible" # it automation https://docs.ansible.com/ansible/latest/index.html
whalebrew "whalebrew/helm" # kubernetes package manager https://helm.sh/
whalebrew "whalebrew/terraform" # infrastructure as code https://www.terraform.io/

# borkdude/brew/clj-kondo # TODO: docker image?

# misc
brew "dockutil" # manage macos dock items https://github.com/kcrawford/dockutil
