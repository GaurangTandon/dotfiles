export PATH=$PATH:~/jdk-11.0.4+11/bin:$HOME/bin
export ZSH="/home/gt/.oh-my-zsh"

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

ZSH_THEME="agnoster"

# https://stackoverflow.com/a/46864032/2675672
set -o noclobber

plugins=(
	zsh-syntax-highlighting
	zsh-autosuggestions
	git
	dircycle
	fasd
    virtualenv
    vi-mode
)

source $ZSH/oh-my-zsh.sh
source ~/.bash_aliases

export LANG=en_US.UTF-8

function mkcd(){
    mkdir "$1" && cd "$1"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# adapted from https://github.com/mokagio/dotfiles/blob/ea34a74ba820f9617f70d5d33769f5979d49a3f3/zshprompt
function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    local EXIT_CODE_PROMPT=' '
    EXIT_CODE_PROMPT+="%{$fg_bold[red]$bg_[white]%}$LAST_EXIT_CODE%{$reset_color%} "
    echo "$EXIT_CODE_PROMPT"
  fi
}

PROMPT='$(check_last_exit_code)%F'$PROMPT

export NODE_PATH=`which node`

setopt clobber
export PATH=$PATH:/home/gt/flutter/bin

# part of growing up :)
alias vim="nvim"
