# .dotfiles

My personal [dotfiles](https://dotfiles.github.io/) managed by [dotbot](https://github.com/anishathalye/dotbot).

## TODO

- emacs config
- VSCode Spacemacs bindings
  - General major mode bindings, hopefully defined once: rename, go to definition, go back, quick fix, etc...

## Initial Setup

```sh
git clone https://github.com/danielschleindlsperger/.dotfiles ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

### Steps after Installation

- Log into 1Password for secrets and keys
- Import (or create) SSH private keys
  - Adjust gitconfig
- Change this repo's remote to use ssh
