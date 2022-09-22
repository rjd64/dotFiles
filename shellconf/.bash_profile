#!/bin/bash

#alias assignments
alias gs='git status'
alias gb='git branch'
alias gf='git fetch'
alias ga='git add'
alias gg='git log --all --decorate --oneline --graph'
alias vim='nvim'
alias vi='nvim'
alias ls="ls -G"
alias lsa="ls -l -a -G"
alias ll="ls -l"

#export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

