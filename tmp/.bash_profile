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
alias lsa="ls -a -G"
alias ll="ls -l"

#random export statments
export PYTHONPATH=~/NDRD/pydti:$PYTHONPATH
export PYTHONPATH=~/NDRD:$PYTHONPATH
export PYTHONPATH=~/NDRD/pydti/pydti:$PYTHONPATH

export CLANG=/usr/bin/clang
export CLANGXX=/usr/bin/clang++

export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim
export BASH_SILENCE_DEPRECATION_WARNING=1

export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ryandibble/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ryandibble/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ryandibble/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ryandibble/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export FREESURFER_HOME=/APPLICATIONS/freesurfer/7.3.2/
source $FREESURFER_HOME/SetUpFreeSurfer.sh
#export ANTSPATH=/Users/ryandibble/ANTs
#export PATH=${ANTSPATH}:$PATH

# FSL Setup
FSLDIR=/usr/local/fsl
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh

