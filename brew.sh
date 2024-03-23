#!/usr/bin/env bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew upgrade
BREW_PREFIX=$(brew --prefix)

# Essentials
brew install vim --with-override-system-vi
brew install neovim
brew install tmux
brew install grep
brew install ack
brew install openssh
brew install stow
brew install --cask iterm2
brew install fzf

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Git
brew install git
brew install git-lfs

# SSH
brew install ssh-copy-id
brew install sshfs

# Neovim Utils
brew install tree-sitter
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install ripgrep
brew install lazygit

# Install languages
brew install python
brew install golang
brew install lua
brew install node
brew install --cask mactex
brew install --cask skim
brew install clang-format
brew install pandoc

# Lichess setup
brew install coursier/formulas/coursier
cs setup
npm i -g pnpm
brew tap mongodb/brew
brew install mongodb-community@7.0
brew install redis
brew install sbt
pip3 install pymongo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Remove outdated versions from the cellar.
brew cleanup
