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

# LunarVim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

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

# Remove outdated versions from the cellar.
brew cleanup

# Create aliases
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/personal ~/Desktop
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/university ~/Desktop
