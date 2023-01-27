#!/usr/bin/env bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

brew install vim --with-override-system-vi
brew install neovim
brew install tmux
brew install grep
brew install openssh

# LunarVim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

brew install ack

brew install git
brew install git-lfs
brew install ssh-copy-id
brew install sshfs

brew install tree-sitter
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install ripgrep

# Install languages
brew install python
brew install go
brew install lua
brew install node
brew install --cask mactex
brew install --cask skim
brew install clang-format

# Remove outdated versions from the cellar.
brew cleanup
