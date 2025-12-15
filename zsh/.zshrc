export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions vi-mode)

source $ZSH/oh-my-zsh.sh

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias n="nvim"
alias ll="ls -la"
alias k='kubectl'

export EDITOR='nvim'
export VI_MODE_SET_CURSOR=true
export PATH="$(brew --prefix openssl)/bin:$PATH"
export PATH="$(brew --prefix)/opt/postgresql@16/bin:$PATH"
export TELEPORT_PROXY=teleport.aws.neon.tech
export TELEPORT_LOGIN=developer

eval "$(~/.local/bin/mise activate zsh)"
eval "$(zoxide init zsh --cmd cd)"
eval "$(fzf --zsh)"
bindkey -v
